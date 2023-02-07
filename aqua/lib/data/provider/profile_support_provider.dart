import 'dart:async';

import 'package:aqua/data/models/http_link.dart';
import 'package:aqua/data/provider/profile_support_item_ui_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';

final profileSupportLinkProvider = Provider.autoDispose<HttpLink>((ref) {
  return HttpLink(
    text: '',
    link: 'https://help.blockstream.com/hc/en-us/categories/900000187546',
  );
});

final profileSupportRateProvider =
    Provider.autoDispose<ProfileSupportRateAppItemModel>((ref) {
  return const ProfileSupportRateAppItemModel(appStoreId: '1500791973');
});

final profileSupportUpdatesLinkProvider = Provider.autoDispose<HttpLink>((ref) {
  return HttpLink(
    text: '',
    link: 'https://apps.apple.com/app/id1500791973',
  );
});

final profileSupportProvider = Provider.autoDispose<ProfileSupportProvider>(
    (ref) => ProfileSupportProvider(ref));

class ProfileSupportProvider {
  ProfileSupportProvider(this.ref) {
    ref.onDispose(() {
      _openLinkSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;

  Future<String> osVersionFuture() async {
    final plugin = DeviceInfoPlugin();
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        final info = await plugin.androidInfo;
        final version = info.version.release;
        if (version != null) {
          return version;
        } else {
          throw ProfileSupportInvalidOsVersionException();
        }
      case TargetPlatform.iOS:
        final info = await plugin.iosInfo;
        final version = info.systemVersion;
        if (version != null) {
          return version;
        } else {
          throw ProfileSupportInvalidOsVersionException();
        }
      default:
        throw ProfileSupportUnsupportedPlatformException();
    }
  }

  Future<String> appVersionFuture() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  Future<Tuple2<String, String>?> versionsFuture() => osVersionFuture()
      .then((osVersion) => appVersionFuture().then((appVersion) =>
          Future<Tuple2<String, String>?>.value(Tuple2(osVersion, appVersion))))
      .catchError((Object _) => Future.value(null));

  final PublishSubject<String> _openLinkSubject = PublishSubject();
  late final Stream<AsyncValue<void>> _processLinkOpeningStream =
      _openLinkSubject
          .switchMap((link) => Stream.value(null)
              .asyncMap((_) => canLaunch(link))
              .asyncMap((result) async {
                if (!result) {
                  throw ProfileSupportUnableToLaunchLinkException();
                }
                return;
              })
              .asyncMap((_) => launch(link))
              .asyncMap((result) async {
                if (!result) {
                  throw ProfileSupportUnableToLaunchLinkException();
                }
                return;
              })
              .map((data) => AsyncValue.data(data))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  void openLink(String link) {
    _openLinkSubject.add(link);
  }
}

final _profileVersionsFutureProvider =
    FutureProvider.autoDispose<Tuple2<String, String>?>((ref) async {
  return ref.watch(profileSupportProvider).versionsFuture();
});

final profileVersionsProvider =
    Provider.autoDispose<Tuple2<String, String>?>((ref) {
  return ref.watch(_profileVersionsFutureProvider).data?.value;
});

final _profileSupportProcessLinkOpeningStreamProvider =
    StreamProvider.autoDispose<AsyncValue<void>>((ref) async* {
  yield* ref.watch(profileSupportProvider)._processLinkOpeningStream;
});

final profileSupportProcessLinkOpeningProvider =
    Provider.autoDispose<AsyncValue<void>?>((ref) {
  return ref.watch(_profileSupportProcessLinkOpeningStreamProvider).data?.value;
});

class ProfileSupportUnsupportedPlatformException implements Exception {}

class ProfileSupportInvalidOsVersionException implements Exception {}

class ProfileSupportUnableToLaunchLinkException implements Exception {}
