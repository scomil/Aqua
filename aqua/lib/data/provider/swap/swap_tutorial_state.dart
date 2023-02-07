import 'package:aqua/screens/exchange/swap/tutorial/tutorial_overlay.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

part 'swap_tutorial_state.freezed.dart';

@freezed
class SwapTutorialState with _$SwapTutorialState {
  const factory SwapTutorialState.bubble({
    required Tuple2<double, double> position,
    required String message,
    @Default(PointerDirection.downLeft) PointerDirection pointerDirection,
  }) = _Bubble;
  const factory SwapTutorialState.circle({
    required Tuple2<double, double> position,
    required String message,
    @Default(PointerDirection.downLeft) PointerDirection pointerDirection,
  }) = _Circle;
  const factory SwapTutorialState.overlay({
    required Tuple2<double, double> position,
    required String message,
    double? buttonOverlayPositionY,
    @Default(PointerDirection.downLeft) PointerDirection pointerDirection,
  }) = _Overlay;
  const factory SwapTutorialState.congrats() = _Congrats;
}
