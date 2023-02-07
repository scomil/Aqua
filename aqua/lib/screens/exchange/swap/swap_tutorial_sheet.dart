import 'package:aqua/common/widgets/aqua_elevated_button.dart';
import 'package:aqua/common/widgets/aqua_text_button.dart';
import 'package:aqua/data/provider/aqua_provider.dart';
import 'package:aqua/data/utils_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

const placeholderVideoId = 'Okb1TjsZlm0';

class SwapTutorialSheet extends StatelessWidget {
  SwapTutorialSheet({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 542.h,
      child: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _TutorialPageOne(
            onNext: () => _controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
            ),
          ),
          _TutorialPageTwo(
            onSwap: () => context
                .read(aquaProvider)
                .disableTutorial()
                .then((_) => Navigator.of(context).pop(true)),
            onSkip: () => context
                .read(aquaProvider)
                .disableTutorial()
                .then((_) => Navigator.of(context).pop(false)),
            onBack: () => _controller.previousPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
            ),
          ),
        ],
      ),
    );
  }
}

class _TutorialPageOne extends StatelessWidget {
  const _TutorialPageOne({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 6.h),
      _TutorialContent(
        totalPages: 2,
        currentPage: 1,
        title: AppLocalizations.of(context)!.swapTutorialTitle,
        description: AppLocalizations.of(context)!.swapTutorialDescription1,
      ),
      SizedBox(height: 18.h),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          child: ElevatedButton(
            onPressed: onNext,
            child: Text(AppLocalizations.of(context)!.swapTutorialButtonNext),
          ),
        ),
      ),
      SizedBox(height: 12.h),
    ]);
  }
}

class _TutorialPageTwo extends StatelessWidget {
  const _TutorialPageTwo({
    Key? key,
    required this.onSwap,
    required this.onSkip,
    required this.onBack,
  }) : super(key: key);

  final VoidCallback onSwap;
  final VoidCallback onSkip;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 6.h),
      _TutorialContent(
        totalPages: 2,
        currentPage: 2,
        title: AppLocalizations.of(context)!.swapTutorialTitle,
        description: AppLocalizations.of(context)!.swapTutorialDescription2,
        onBack: onBack,
      ),
      SizedBox(height: 18.h),
      Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 24.w),
        child: AquaElevatedButton(
          onPressed: onSwap,
          child: Text(AppLocalizations.of(context)!.swapTutorialButtonSwap),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.h, bottom: 2.h),
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          child: AquaTextButton(
            onPressed: onSkip,
            child: Text(
              AppLocalizations.of(context)!.swapTutorialButtonSkip,
              style: Theme.of(context).textTheme.button?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class _TutorialContent extends StatefulWidget {
  const _TutorialContent({
    Key? key,
    required this.title,
    required this.description,
    required this.totalPages,
    required this.currentPage,
    this.onBack,
  }) : super(key: key);

  final String title;
  final String description;
  final int totalPages;
  final int currentPage;
  final VoidCallback? onBack;

  @override
  State<_TutorialContent> createState() => _TutorialContentState();
}

class _TutorialContentState extends State<_TutorialContent> {
  late YoutubePlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = YoutubePlayerController(
      initialVideoId: placeholderVideoId,
      flags: const YoutubePlayerFlags(
        mute: true,
        loop: true,
        hideControls: true,
        forceHD: true,
        disableDragSeek: true,
      ),
    );
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: widget.onBack != null ? 1 : 0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: widget.onBack,
                  iconSize: 24.h,
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.chevron_left),
                ),
              ),
            ),
            Center(
              child: Text(
                '${widget.currentPage}/${widget.totalPages}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.w, right: 96.w),
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 21.sp,
                  height: 1,
                ),
          ),
        ),
        SizedBox(height: 24.h),
        Consumer(builder: (context, watch, child) {
          final status = watch(networkStatusProvider);
          return AspectRatio(
            aspectRatio: 16 / 9,
            child: status == NetworkStatus.connected
                ? YoutubePlayer(
                    controller: _videoController,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor:
                        Theme.of(context).colorScheme.secondary,
                    progressColors: ProgressBarColors(
                      playedColor: Theme.of(context).colorScheme.secondary,
                      handleColor: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                : Container(
                    color: Theme.of(context).colorScheme.onSurface,
                    child: Icon(
                      MaterialIcons.play_disabled,
                      size: 60.r,
                    ),
                  ),
          );
        }),
        SizedBox(height: 24.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            widget.description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
      ],
    );
  }
}
