import 'package:aqua/data/models/http_link.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';

final profileAboutTwitterLinkProvider = Provider.autoDispose<HttpLink>((ref) {
  return HttpLink(
    text: '@Blockstream',
    link: 'https://twitter.com/blockstream',
  );
});

final profileAboutWebsiteLinkProvider = Provider.autoDispose<HttpLink>((ref) {
  return HttpLink(
    text: 'blockstream.com',
    link: 'https://www.blockstream.com',
  );
});

final profileAboutProvider = Provider.autoDispose<ProfileAboutProvider>(
    (ref) => ProfileAboutProvider(ref));

class ProfileAboutProvider {
  ProfileAboutProvider(this.ref) {
    ref.onDispose(() {
      _openLinkSubject.close();
    });
  }

  final AutoDisposeProviderReference ref;

  final PublishSubject<String> _openLinkSubject = PublishSubject();
  late final Stream<AsyncValue<void>> _processLinkOpeningStream =
      _openLinkSubject
          .switchMap((link) => Stream.value(null)
              .asyncMap((_) => canLaunch(link))
              .asyncMap((result) async {
                if (!result) {
                  throw ProfileAboutUnableToLaunchLinkException();
                }
                return;
              })
              .asyncMap((_) => launch(link))
              .asyncMap((result) async {
                if (!result) {
                  throw ProfileAboutUnableToLaunchLinkException();
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

final _profileAboutProcessLinkOpeningStreamProvider =
    StreamProvider.autoDispose<AsyncValue<void>>((ref) async* {
  yield* ref.watch(profileAboutProvider)._processLinkOpeningStream;
});

final profileAboutProcessLinkOpeningProvider =
    Provider.autoDispose<AsyncValue<void>?>((ref) {
  return ref.watch(_profileAboutProcessLinkOpeningStreamProvider).data?.value;
});

class ProfileAboutUnableToLaunchLinkException implements Exception {}
