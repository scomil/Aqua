import 'dart:io';

import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/biometric/biometric_activation_result.dart';
import 'package:aqua/data/provider/biometric/biometric_prompt_ui_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final biometricProvider =
    Provider.autoDispose<_BiometricProvider>((ref) => _BiometricProvider(ref));

class _BiometricProvider {
  _BiometricProvider(this._ref) {
    _ref.onDispose(() {
      _enableSubject.close();
      _skipSubject.close();
    });
  }

  final ProviderReference _ref;
  final PublishSubject<void> _enableSubject = PublishSubject();
  void enable() {
    _enableSubject.add(null);
  }

  final PublishSubject<void> _skipSubject = PublishSubject();
  void skip() {
    _skipSubject.add(null);
  }

  late final Stream<AsyncValue<void>> _activationProcessingStream = Rx.merge([
    _enableSubject.switchMap((_) => Stream.value(_)
        .asyncMap((_) => _ref.read(aquaProvider).enableBiometric())
        .map((_) => AsyncValue.data(_))
        .onErrorReturnWith(
            (error, stackTrace) => AsyncValue.error(error, stackTrace))),
    _skipSubject.map(
        (_) => AsyncValue<void>.error(BiometricActivationRejectException()))
  ]).shareReplay(maxSize: 1);

  Stream<BiometricActivationResult?> _activationResultStream() =>
      _activationProcessingStream
          .switchMap<BiometricActivationResult?>((value) => value.when(
                data: (_) => Stream<BiometricActivationResult?>.value(
                        const BiometricActivationSuccessResult())
                    .concatWith([Stream.value(null)]),
                loading: () =>
                    Stream.value(const BiometricActivationLoadingResult()),
                error: (error, _) => () {
                  if (error is BiometricActivationRejectException) {
                    return Stream<BiometricActivationResult?>.value(
                            const BiometricActivationRejectResult())
                        .concatWith([Stream.value(null)]);
                  } else {
                    return Stream.value(null);
                  }
                }.call(),
              ));

  Stream<BiometricPromptUiModel> _uiModelStream(BuildContext context) =>
      Stream.value(null).map((_) {
        if (Platform.isAndroid) {
          const assetName = 'assets/touch.svg';
          final title =
              AppLocalizations.of(context)!.biometricPromptTitleTouchId;
          final subtitle =
              AppLocalizations.of(context)!.biometricPromptSubtitleTouchId;
          final infoTitle =
              AppLocalizations.of(context)!.biometricPromptDescriptionTouchId;

          return BiometricPromptUiModel(
            assetName: assetName,
            title: title,
            subtitle: subtitle,
            infoTitle: infoTitle,
            securityDialogTitle: AppLocalizations.of(context)!
                .biometricPromptAndroidSecureInfoTitle,
            securityDialogDescription: AppLocalizations.of(context)!
                .biometricPromptAndroidSecureInfoDescription,
          );
        } else if (Platform.isIOS) {
          const assetName = 'assets/face_id.svg';
          final title =
              AppLocalizations.of(context)!.biometricPromptTitleFaceId;
          final subtitle =
              AppLocalizations.of(context)!.biometricPromptSubtitleFaceId;
          final infoTitle =
              AppLocalizations.of(context)!.biometricPromptDescriptionFaceId;

          return BiometricPromptUiModel(
            assetName: assetName,
            title: title,
            subtitle: subtitle,
            infoTitle: infoTitle,
            securityDialogTitle:
                AppLocalizations.of(context)!.biometricPromptIosSecureInfoTitle,
            securityDialogDescription: AppLocalizations.of(context)!
                .biometricPromptIosSecureInfoDescription,
          );
        } else {
          throw BiometricUnsupportedPlatformException();
        }
      }).onErrorResumeNext(const Stream.empty());
}

final _biometricActivationResultStreamProvider =
    StreamProvider.autoDispose<BiometricActivationResult?>((ref) async* {
  yield* ref.watch(biometricProvider)._activationResultStream();
});

final biometricActivationResultProvider =
    Provider.autoDispose<BiometricActivationResult?>((ref) {
  return ref.watch(_biometricActivationResultStreamProvider).data?.value;
});

final _biometricUiModelStreamProvider = StreamProvider.family
    .autoDispose<BiometricPromptUiModel, BuildContext>((ref, context) async* {
  yield* ref.watch(biometricProvider)._uiModelStream(context);
});

final biometricUiModelProvider = Provider.family
    .autoDispose<BiometricPromptUiModel?, BuildContext>((ref, context) {
  return ref.watch(_biometricUiModelStreamProvider(context)).data?.value;
});

class BiometricUnsupportedPlatformException implements Exception {}

class BiometricActivationFailureException implements Exception {}

class BiometricActivationRejectException implements Exception {}
