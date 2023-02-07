import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/provider/swap/swap_tutorial_provider.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SwapTutorialCompleteScreen extends StatefulWidget {
  static const routeName = '/tutorialCompletionScreen';

  const SwapTutorialCompleteScreen({Key? key}) : super(key: key);

  @override
  State<SwapTutorialCompleteScreen> createState() =>
      _SwapTutorialCompleteScreenState();
}

class _SwapTutorialCompleteScreenState
    extends State<SwapTutorialCompleteScreen> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 10),
    );
    _confettiController.play();
    super.initState();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read(aquaProvider).disableTutorial();
        context.read(swapTutorialProvider).goToHistoryHint();
        Navigator.of(context).pop();
      },
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(.5),
        body: ConfettiWidget(
          confettiController: _confettiController,
          blastDirectionality: BlastDirectionality.explosive,
          numberOfParticles: 20,
          shouldLoop: true,
          colors: const [
            Color(0xFFEC4130),
            Color(0xFF7F65C0),
            Color(0xFFFFCB49),
            Color(0xFF00C89D),
            Color(0xFF72B8D6),
          ],
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Text(
                AppLocalizations.of(context)!.swapTutorialCompleteMessage,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
