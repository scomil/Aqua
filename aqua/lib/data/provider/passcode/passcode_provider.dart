import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/passcode/passcode_dialog_ui_model.dart';
import 'package:aqua/data/provider/passcode/passcode_processing_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final passcodeProvider = Provider.family
    .autoDispose<_PasscodeProvider, Object?>(
        (ref, _) => _PasscodeProvider(ref));

class _PasscodeProvider {
  _PasscodeProvider(this._ref) {
    _ref.onDispose(() {
      _passcodeTextSubject.close();
    });
  }

  final ProviderReference _ref;

  final BehaviorSubject<String> _passcodeTextSubject =
      BehaviorSubject.seeded('');
  void updatePasscode(String text) {
    _passcodeTextSubject.add(text);
  }

  Stream<List<Color>> _pinColorsStream(BuildContext context) =>
      _passcodeTextSubject.map((text) => List.generate(
          6,
          (index) => index < text.length
              ? Theme.of(context).colorScheme.secondaryVariant
              : Theme.of(context).colorScheme.surface));
}

final enablePasscodeProvider = Provider.autoDispose<_EnablePasscodeProvider>(
    (ref) => _EnablePasscodeProvider(ref));

class _EnablePasscodeProvider {
  _EnablePasscodeProvider(this._ref) {
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

  Stream<Object> _navigateForwardStream() =>
      _enableSubject.map((_) => Object());

  final PublishSubject<void> _skipSubject = PublishSubject();
  void skip() {
    _skipSubject.add(null);
  }

  late final Stream<AsyncValue<void>> _skipProcessingStream = _skipSubject
      .switchMap((_) => Stream.value(_)
          .asyncMap((_) => _ref.read(aquaProvider).skipProtection())
          .map((_) => AsyncValue.data(_))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace)))
      .shareReplay(maxSize: 1);
  Stream<Object> _popStream() =>
      _skipProcessingStream.switchMap((value) => value.maybeWhen(
            data: (_) => Stream.value(Object()),
            orElse: () => const Stream.empty(),
          ));
}

final _enablePasscodeNavigateForwardStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(enablePasscodeProvider)._navigateForwardStream();
});

final enablePasscodeNavigateForwardProvider =
    Provider.autoDispose<Object?>((ref) {
  return ref.watch(_enablePasscodeNavigateForwardStreamProvider).data?.value;
});

final _enablePasscodePopStreamProvider =
    StreamProvider.autoDispose<Object>((ref) async* {
  yield* ref.watch(enablePasscodeProvider)._popStream();
});

final enablePasscodePopProvider = Provider.autoDispose<Object?>((ref) {
  return ref.watch(_enablePasscodePopStreamProvider).data?.value;
});

final createPasscodeProvider = Provider.family
    .autoDispose<_CreatePasscodeProvider, Object?>(
        (ref, arguments) => _CreatePasscodeProvider(ref, arguments));

class _CreatePasscodeProvider {
  _CreatePasscodeProvider(this._ref, this._arguments) {
    _ref.onDispose(() {
      _validateSubject.close();
      _reopenSubject.close();
    });
  }

  final ProviderReference _ref;
  final Object? _arguments;

  final PublishSubject<void> _validateSubject = PublishSubject();
  void validate() {
    _validateSubject.add(null);
  }

  late final Stream<AsyncValue<void>> _validationProcessingStream =
      _validateSubject
          .switchMap((_) => Stream.value(_)
              .asyncMap((_) => _ref
                      .read(passcodeProvider(_arguments))
                      ._passcodeTextSubject
                      .asyncMap((text) async {
                    if (text.length != 6) {
                      throw PasscodeProcessingInvalidLengthException();
                    }
                    return;
                  }).first)
              .map((_) => AsyncValue.data(_))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  Stream<PasscodeProcessingResult> _validationResultStream(
          BuildContext context) =>
      _validationProcessingStream
          .asyncMap<PasscodeProcessingResult>((value) => value.when(
                data: (_) => _ref
                    .read(passcodeProvider(_arguments))
                    ._passcodeTextSubject
                    .map((arguments) =>
                        PasscodeProcessingSuccessResult(arguments: arguments))
                    .first,
                loading: () => Future.value(
                    const PasscodeProcessingLoadingResult(description: '')),
                error: (error, __) {
                  if (error is PasscodeProcessingInvalidLengthException) {
                    final title =
                        AppLocalizations.of(context)!.passcodeErrorAlertTitle;
                    final subtitle = AppLocalizations.of(context)!
                        .passcodeErrorAlertSubtitle;
                    final buttonTitle =
                        AppLocalizations.of(context)!.passcodeErrorAlertButton;
                    // ignore: prefer_function_declarations_over_variables
                    final onButtonPressed = () {
                      _reopenSubject.add(null);
                    };
                    return Future.value(PasscodeProcessingFailureResult(
                      title: title,
                      subtitle: subtitle,
                      buttonTitle: buttonTitle,
                      onButtonPressed: onButtonPressed,
                    ));
                  } else {
                    return Future.error(error);
                  }
                },
              ))
          .onErrorResumeNext(const Stream.empty());

  final PublishSubject<void> _reopenSubject = PublishSubject();
  Stream<Object> _reopenStream() => _reopenSubject.map((arguments) => Object());
}

final _passcodePinColorsStreamProvider = StreamProvider.family
    .autoDispose<List<Color>, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref.watch(passcodeProvider(arguments))._pinColorsStream(context);
});

final passcodePinColorsProvider = Provider.family
    .autoDispose<List<Color>?, Tuple2<Object?, BuildContext>>((ref, tuple) {
  return ref.watch(_passcodePinColorsStreamProvider(tuple)).data?.value;
});

final _createPasscodeValidationResultStreamProvider = StreamProvider.family
    .autoDispose<PasscodeProcessingResult?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(createPasscodeProvider(arguments))
      ._validationResultStream(context);
});

final createPasscodeValidationResultProvider = Provider.family
    .autoDispose<PasscodeProcessingResult?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
      .watch(_createPasscodeValidationResultStreamProvider(tuple))
      .data
      ?.value;
});

final _createPasscodeReopenStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(createPasscodeProvider(arguments))._reopenStream();
});

final createPasscodeReopenProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_createPasscodeReopenStreamProvider(arguments)).data?.value;
});

final confirmPasscodeProvider = Provider.family
    .autoDispose<_ConfirmPasscodeProvider, Object?>(
        (ref, arguments) => _ConfirmPasscodeProvider(ref, arguments));

class _ConfirmPasscodeProvider {
  _ConfirmPasscodeProvider(this._ref, this._arguments) {
    _ref.onDispose(() {
      _processSubject.close();
      _reopenSubject.close();
      _enablePasscodeSubject.close();
    });
  }

  final ProviderReference _ref;
  final Object? _arguments;

  late final Stream<AsyncValue<String>> _argumentsStream =
      Stream.value(_arguments)
          .asyncMap((arguments) async {
            if (arguments is Tuple2<String, Object>) {
              return arguments.item1;
            } else if (arguments is String) {
              return arguments;
            } else {
              throw PasscodeInvalidArgumentsException();
            }
          })
          .map((arguments) => AsyncValue.data(arguments))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace))
          .shareReplay(maxSize: 1);

  final PublishSubject<void> _processSubject = PublishSubject();
  void process() {
    _processSubject.add(null);
  }

  late final Stream<AsyncValue<void>> _passcodeProcessingStream =
      _processSubject
          .switchMap((value) => _argumentsStream
              .switchMap<String>((value) => value.maybeWhen(
                    data: (data) => Stream.value(data),
                    orElse: () => const Stream.empty(),
                  ))
              .asyncMap((passcode) => _ref
                  .read(passcodeProvider(_arguments))
                  ._passcodeTextSubject
                  .first
                  .then((confirmPasscode) => Future.value(confirmPasscode)
                          .then((confirmPasscode) async {
                        if (confirmPasscode.length != 6) {
                          throw PasscodeProcessingInvalidLengthException();
                        }

                        if (confirmPasscode != passcode) {
                          throw PasscodeProcessingInvalidMatchException();
                        }

                        return;
                      })))
              .map((_) => AsyncValue.data(_))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  Stream<String> _enablePasscodeStream() =>
      _passcodeProcessingStream.switchMap((value) => value.maybeWhen(
            data: (_) => Stream.value(_).asyncMap((_) => _ref
                .read(passcodeProvider(_arguments))
                ._passcodeTextSubject
                .first),
            orElse: () => const Stream<String>.empty(),
          ));

  Stream<PasscodeProcessingResult> _validationResultStream(
          BuildContext context) =>
      _passcodeProcessingStream
          .switchMap<PasscodeProcessingResult>((value) => value.when(
                data: (_) =>
                    Stream.value(const PasscodeProcessingSuccessResult()),
                loading: () => Stream.value(PasscodeProcessingLoadingResult(
                  description:
                      AppLocalizations.of(context)!.initialScreenLoadingWallet,
                )),
                error: (error, _) => () {
                  if (error is PasscodeProcessingInvalidLengthException) {
                    final title =
                        AppLocalizations.of(context)!.passcodeErrorAlertTitle;
                    final subtitle = AppLocalizations.of(context)!
                        .passcodeErrorAlertSubtitle;
                    final buttonTitle =
                        AppLocalizations.of(context)!.passcodeErrorAlertButton;
                    // ignore: prefer_function_declarations_over_variables
                    final onButtonPressed = () {
                      _reopenSubject.add(null);
                    };
                    return Stream.value(PasscodeProcessingFailureResult(
                      title: title,
                      subtitle: subtitle,
                      buttonTitle: buttonTitle,
                      onButtonPressed: onButtonPressed,
                    ));
                  } else if (error is PasscodeProcessingInvalidMatchException) {
                    final title = AppLocalizations.of(context)!
                        .passcodeMatchErrorAlertTitle;
                    final subtitle = AppLocalizations.of(context)!
                        .passcodeMatchErrorAlertSubtitle;
                    final buttonTitle = AppLocalizations.of(context)!
                        .passcodeMatchErrorAlertButton;
                    // ignore: prefer_function_declarations_over_variables
                    final onButtonPressed = () {
                      _reopenSubject.add(null);
                    };
                    return Stream.value(PasscodeProcessingFailureResult(
                      title: title,
                      subtitle: subtitle,
                      buttonTitle: buttonTitle,
                      onButtonPressed: onButtonPressed,
                    ));
                  } else {
                    final title =
                        AppLocalizations.of(context)!.unknownErrorTitle;
                    final subtitle =
                        AppLocalizations.of(context)!.unknownErrorSubtitle;
                    final buttonTitle =
                        AppLocalizations.of(context)!.unknownErrorButton;
                    // ignore: prefer_function_declarations_over_variables
                    final onButtonPressed = () {
                      _reopenSubject.add(null);
                    };
                    return Stream.value(PasscodeProcessingFailureResult(
                      title: title,
                      subtitle: subtitle,
                      buttonTitle: buttonTitle,
                      onButtonPressed: onButtonPressed,
                    ));
                  }
                }.call(),
              ))
          .doOnError((_, __) {
        /** TODO Notify remote debugging platform */
      }).onErrorResumeNext(const Stream.empty());

  final PublishSubject<void> _reopenSubject = PublishSubject();
  Stream<Object> _reopenStream() => _reopenSubject
      .switchMap((_) => _argumentsStream.switchMap((value) => value.maybeWhen(
            data: (data) => Stream.value(data),
            orElse: () => const Stream<String>.empty(),
          )))
      .map((passcode) => Tuple2(passcode, Object()));

  final PublishSubject<void> _enablePasscodeSubject = PublishSubject();
  void enablePasscode() {
    _enablePasscodeSubject.add(null);
  }

  late final Stream<AsyncValue<void>> _processPasscodeEnableStream =
      _enablePasscodeSubject
          .switchMap((_) => Stream.value(_)
              .asyncMap((_) => _ref
                  .read(passcodeProvider(_arguments))
                  ._passcodeTextSubject
                  .first)
              .asyncMap((passcode) =>
                  _ref.read(aquaProvider).enablePasscode(passcode))
              .map((_) => AsyncValue.data(_))
              .startWith(const AsyncValue.loading())
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);
  Stream<Object> _popStream() =>
      _processPasscodeEnableStream.switchMap((value) => value.maybeWhen(
            data: (_) => Stream.value(Object),
            orElse: () => const Stream.empty(),
          ));
}

final _confirmPasscodeProcessingResultStreamProvider = StreamProvider.family
    .autoDispose<PasscodeProcessingResult, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(confirmPasscodeProvider(arguments))
      ._validationResultStream(context);
});

final confirmPasscodeProcessingResultProvider = Provider.family
    .autoDispose<PasscodeProcessingResult?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
      .watch(_confirmPasscodeProcessingResultStreamProvider(tuple))
      .data
      ?.value;
});

final _confirmPasscodeReopenStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(confirmPasscodeProvider(arguments))._reopenStream();
});

final confirmPasscodeReopenProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_confirmPasscodeReopenStreamProvider(arguments)).data?.value;
});

final _confirmPasscodeEnablePasscodeStreamProvider =
    StreamProvider.family.autoDispose<String, Object?>((ref, arguments) async* {
  yield* ref.watch(confirmPasscodeProvider(arguments))._enablePasscodeStream();
});

final confirmPasscodeEnablePasscodeProvider =
    Provider.family.autoDispose<String?, Object?>((ref, arguments) {
  return ref
      .watch(_confirmPasscodeEnablePasscodeStreamProvider(arguments))
      .data
      ?.value;
});

final _confirmPasscodePopStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(confirmPasscodeProvider(arguments))._popStream();
});

final confirmPasscodePopProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_confirmPasscodePopStreamProvider(arguments)).data?.value;
});

final unlockPasscodeProvider = Provider.family
    .autoDispose<_UnlockPasscodeProvider, Object?>(
        (ref, arguments) => _UnlockPasscodeProvider(ref, arguments));

class _UnlockPasscodeProvider {
  _UnlockPasscodeProvider(this._ref, this._arguments) {
    _ref.onDispose(() {
      _unlockSubject.close();
      _reopenSubject.close();
    });
  }

  final ProviderReference _ref;
  final Object? _arguments;

  final PublishSubject<void> _unlockSubject = PublishSubject();
  void unlock() {
    _unlockSubject.add(null);
  }

  late final Stream<AsyncValue<void>> _unlockProcessingStream = _unlockSubject
      .switchMap((_) => Stream.value(null)
          .asyncMap((_) => _ref
              .read(passcodeProvider(_arguments))
              ._passcodeTextSubject
              .first)
          .asyncMap((passcode) async {
            if (passcode.length != 6) {
              throw PasscodeProcessingInvalidLengthException();
            }

            final storagePasscode = await _ref.read(aquaProvider).getPasscode();
            if (storagePasscode == null) {
              throw PasscodeProcessingInvalidMatchException();
            }

            if (storagePasscode != passcode) {
              throw PasscodeProcessingInvalidMatchException();
            }

            return;
          })
          .map((_) => AsyncValue.data(_))
          .startWith(const AsyncValue.loading())
          .onErrorReturnWith(
              (error, stackTrace) => AsyncValue.error(error, stackTrace)))
      .shareReplay(maxSize: 1);

  Stream<PasscodeUnlockResult> _popStream() => Rx.merge([
        _unlockProcessingStream.switchMap((value) => value.maybeWhen(
              data: (_) => Stream.value(const PasscodeUnlockSuccessResult()),
              orElse: () => const Stream<PasscodeUnlockResult>.empty(),
            )),
        _reopenSubject.map((_) => const PasscodeUnlockFailureResult()),
      ]);

  Stream<Object> _showLoadingDialogStream() =>
      _unlockProcessingStream.switchMap((value) => value.maybeWhen(
            loading: () => Stream.value(Object()),
            orElse: () => const Stream<Object>.empty(),
          ));

  Stream<PasscodeDialogUiModel> _showAlertDialogStream(BuildContext context) =>
      _unlockProcessingStream.switchMap((value) => value.maybeWhen(
            error: (error, _) => () {
              if (error is PasscodeProcessingInvalidLengthException) {
                final title =
                    AppLocalizations.of(context)!.passcodeErrorAlertTitle;
                final subtitle =
                    AppLocalizations.of(context)!.passcodeErrorAlertSubtitle;
                final buttonTitle =
                    AppLocalizations.of(context)!.passcodeErrorAlertButton;
                // ignore: prefer_function_declarations_over_variables
                final onButtonPressed = () {
                  _reopenSubject.add(null);
                };
                return Stream.value(PasscodeDialogUiModel(
                  title: title,
                  subtitle: subtitle,
                  buttonTitle: buttonTitle,
                  onButtonPressed: onButtonPressed,
                ));
              } else if (error is PasscodeProcessingInvalidMatchException) {
                final title =
                    AppLocalizations.of(context)!.passcodeMatchErrorAlertTitle;
                final subtitle = AppLocalizations.of(context)!
                    .passcodeMatchErrorAlertSubtitle;
                final buttonTitle =
                    AppLocalizations.of(context)!.passcodeMatchErrorAlertButton;
                // ignore: prefer_function_declarations_over_variables
                final onButtonPressed = () {
                  _reopenSubject.add(null);
                };
                return Stream.value(PasscodeDialogUiModel(
                  title: title,
                  subtitle: subtitle,
                  buttonTitle: buttonTitle,
                  onButtonPressed: onButtonPressed,
                ));
              } else {
                final title = AppLocalizations.of(context)!.unknownErrorTitle;
                final subtitle =
                    AppLocalizations.of(context)!.unknownErrorSubtitle;
                final buttonTitle =
                    AppLocalizations.of(context)!.unknownErrorButton;
                // ignore: prefer_function_declarations_over_variables
                final onButtonPressed = () {
                  _reopenSubject.add(null);
                };
                return Stream.value(PasscodeDialogUiModel(
                  title: title,
                  subtitle: subtitle,
                  buttonTitle: buttonTitle,
                  onButtonPressed: onButtonPressed,
                ));
              }
            }.call(),
            orElse: () => const Stream<PasscodeDialogUiModel>.empty(),
          ));

  Stream<Object> _unlockedStream() =>
      _unlockProcessingStream.switchMap((value) => value.maybeWhen(
            data: (_) => Stream.value(Object()),
            orElse: () => const Stream<String>.empty(),
          ));

  Stream<PasscodeProcessingResult> _unlockResultStream(BuildContext context) =>
      _unlockProcessingStream
          .switchMap<PasscodeProcessingResult>((value) => value.when(
                data: (_) =>
                    Stream.value(const PasscodeProcessingSuccessResult()),
                loading: () => Stream.value(PasscodeProcessingLoadingResult(
                  description: AppLocalizations.of(context)!
                      .passcodeUnlockLoadingDescription,
                )),
                error: (error, _) => () {
                  if (error is PasscodeProcessingInvalidLengthException) {
                    final title =
                        AppLocalizations.of(context)!.passcodeErrorAlertTitle;
                    final subtitle = AppLocalizations.of(context)!
                        .passcodeErrorAlertSubtitle;
                    final buttonTitle =
                        AppLocalizations.of(context)!.passcodeErrorAlertButton;
                    // ignore: prefer_function_declarations_over_variables
                    final onButtonPressed = () {
                      _reopenSubject.add(null);
                    };
                    return Stream.value(PasscodeProcessingFailureResult(
                      title: title,
                      subtitle: subtitle,
                      buttonTitle: buttonTitle,
                      onButtonPressed: onButtonPressed,
                    ));
                  } else if (error is PasscodeProcessingInvalidMatchException) {
                    final title = AppLocalizations.of(context)!
                        .passcodeMatchErrorAlertTitle;
                    final subtitle = AppLocalizations.of(context)!
                        .passcodeMatchErrorAlertSubtitle;
                    final buttonTitle = AppLocalizations.of(context)!
                        .passcodeMatchErrorAlertButton;
                    // ignore: prefer_function_declarations_over_variables
                    final onButtonPressed = () {
                      _reopenSubject.add(null);
                    };
                    return Stream.value(PasscodeProcessingFailureResult(
                      title: title,
                      subtitle: subtitle,
                      buttonTitle: buttonTitle,
                      onButtonPressed: onButtonPressed,
                    ));
                  } else {
                    final title =
                        AppLocalizations.of(context)!.unknownErrorTitle;
                    final subtitle =
                        AppLocalizations.of(context)!.unknownErrorSubtitle;
                    final buttonTitle =
                        AppLocalizations.of(context)!.unknownErrorButton;
                    // ignore: prefer_function_declarations_over_variables
                    final onButtonPressed = () {
                      _reopenSubject.add(null);
                    };
                    return Stream.value(PasscodeProcessingFailureResult(
                      title: title,
                      subtitle: subtitle,
                      buttonTitle: buttonTitle,
                      onButtonPressed: onButtonPressed,
                    ));
                  }
                }.call(),
              ))
          .doOnError((_, __) {
        /** TODO Notify remote debugging platform */
      }).onErrorResumeNext(const Stream.empty());

  final PublishSubject<void> _reopenSubject = PublishSubject();
  Stream<Object> _reopenStream() => _reopenSubject.map((_) => Object());
}

final _unlockPasscodeProcessingResultStreamProvider = StreamProvider.family
    .autoDispose<PasscodeProcessingResult, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(unlockPasscodeProvider(arguments))
      ._unlockResultStream(context);
});

final unlockPasscodeProcessingResultProvider = Provider.family
    .autoDispose<PasscodeProcessingResult?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
      .watch(_unlockPasscodeProcessingResultStreamProvider(tuple))
      .data
      ?.value;
});

final _unlockPasscodeReopenStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(unlockPasscodeProvider(arguments))._reopenStream();
});

final unlockPasscodeReopenProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref.watch(_unlockPasscodeReopenStreamProvider(arguments)).data?.value;
});

final _unlockPasscodePopStreamProvider = StreamProvider.family
    .autoDispose<PasscodeUnlockResult, Object?>((ref, arguments) async* {
  yield* ref.watch(unlockPasscodeProvider(arguments))._popStream();
});

final unlockPasscodePopProvider = Provider.family
    .autoDispose<PasscodeUnlockResult?, Object?>((ref, arguments) {
  return ref.watch(_unlockPasscodePopStreamProvider(arguments)).data?.value;
});

final _unlockPasscodeShowLoadingDialogStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref
      .watch(unlockPasscodeProvider(arguments))
      ._showLoadingDialogStream();
});

final unlockPasscodeShowLoadingDialogProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_unlockPasscodeShowLoadingDialogStreamProvider(arguments))
      .data
      ?.value;
});

final _unlockPasscodeShowAlertDialogStreamProvider = StreamProvider.family
    .autoDispose<PasscodeDialogUiModel, Tuple2<Object?, BuildContext>>(
        (ref, tuple) async* {
  final arguments = tuple.item1;
  final context = tuple.item2;
  yield* ref
      .watch(unlockPasscodeProvider(arguments))
      ._showAlertDialogStream(context);
});

final unlockPasscodeShowAlertDialogProvider = Provider.family
    .autoDispose<PasscodeDialogUiModel?, Tuple2<Object?, BuildContext>>(
        (ref, tuple) {
  return ref
      .watch(_unlockPasscodeShowAlertDialogStreamProvider(tuple))
      .data
      ?.value;
});

final _unlockPasscodeUnlockedStreamProvider =
    StreamProvider.family.autoDispose<Object, Object?>((ref, arguments) async* {
  yield* ref.watch(unlockPasscodeProvider(arguments))._unlockedStream();
});

final unlockPasscodeUnlockedProvider =
    Provider.family.autoDispose<Object?, Object?>((ref, arguments) {
  return ref
      .watch(_unlockPasscodeUnlockedStreamProvider(arguments))
      .data
      ?.value;
});

class PasscodeInvalidArgumentsException implements Exception {}

class PasscodeProcessingInvalidLengthException implements Exception {}

class PasscodeProcessingInvalidMatchException implements Exception {}

class PasscodeProcessingInvalidMnemonicException implements Exception {}
