import 'package:aqua/screens/exchange/swap/tutorial/tutorial_overlay.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final swapTutorialProvider = Provider.autoDispose<SwapTutorialProvider>((_) {
  return SwapTutorialProvider();
});

final _swapTutorialIndexStreamProvider =
    StreamProvider.autoDispose<int?>((ref) async* {
  yield* ref.watch(swapTutorialProvider).stream;
});

final swapTutorialIndexProvider = Provider.autoDispose<int?>((ref) {
  return ref.watch(_swapTutorialIndexStreamProvider).data?.value;
});

final swapTutorialCompleteProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(swapTutorialIndexProvider) == null;
});

final swapTutorialCongratsProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(swapTutorialIndexProvider) == TutorialScreens.congrats.index;
});

class SwapTutorialProvider extends StateNotifier<int?> {
  SwapTutorialProvider() : super(null);

  void startTutorial() {
    state = TutorialScreens.asset.index;
  }

  void goToAmountHint() {
    if (state != null) {
      state = TutorialScreens.amount.index;
    }
  }

  void goToRateHint() {
    if (state != null) {
      state = TutorialScreens.rate.index;
    }
  }

  void goToSwapHint() {
    if (state != null) {
      state = TutorialScreens.swap.index;
    }
  }

  void goToCongratulations() {
    if (state != null) {
      state = TutorialScreens.congrats.index;
    }
  }

  void goToHistoryHint() {
    if (state != null) {
      state = TutorialScreens.history.index;
    }
  }

  void completeTutorial() {
    state = null;
  }
}
