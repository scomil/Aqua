import 'dart:math' as math show sin, pi, sqrt;

import 'package:aqua/data/provider/swap/swap_tutorial_provider.dart';
import 'package:aqua/data/provider/swap/swap_tutorial_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

const _tutorialColor = Color(0xFF7E5AAC);

enum TutorialScreens { asset, amount, rate, swap, congrats, history }

enum PointerDirection { upLeft, upRight, downLeft }

enum FocusMode { none, pointer, overlay }

class TutorialOverlay extends StatelessWidget {
  TutorialOverlay({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<SwapTutorialState> items;

  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final complete = watch(swapTutorialCompleteProvider);
      return complete
          ? const SizedBox.shrink()
          : ProviderListener<int?>(
              provider: swapTutorialIndexProvider,
              onChange: (_, pos) {
                if (pos != null) {
                  _controller.jumpToPage(pos);
                }
              },
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                children: items.map((e) => _TutorialItem(item: e)).toList(),
              ),
            );
    });
  }
}

class _TutorialItem extends StatelessWidget {
  const _TutorialItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final SwapTutorialState item;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Full-length button overlay
      item.maybeWhen(
        overlay: (position, message, overlayPositionY, direction) => Positioned(
          top: overlayPositionY,
          child: Container(
            width: 315.w,
            height: 48.h,
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.r),
              border: Border.all(
                color: _tutorialColor,
                width: 3.r,
              ),
            ),
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
      // Message Bubble
      item.maybeWhen(
        bubble: (position, message, direction) => Positioned(
          left: position.item1,
          top: position.item2,
          child: CustomPaint(
            painter: _TutorialBubble(direction),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 8.h),
              child: Text(message),
            ),
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
      // Animated pointer
      item.maybeWhen(
        bubble: (position, message, direction) => Positioned(
          left: position.item1,
          top: position.item2,
          child: CustomPaint(
            painter: _TutorialBubble(direction),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 8.h),
              child: Text(message),
            ),
          ),
        ),
        circle: (position, message, direction) => Positioned(
          left: position.item1,
          top: position.item2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Message bubble
              CustomPaint(
                painter: _TutorialBubble(direction),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.w, vertical: 8.h),
                  child: Text(message),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                child: Ripples(
                  size: 20.r,
                  child: const SizedBox.shrink(),
                ),
              ),
            ],
          ),
        ),
        overlay: (position, message, overlayPositionY, direction) => Positioned(
          left: position.item1,
          top: position.item2,
          child: CustomPaint(
            painter: _TutorialBubble(direction),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 8.h),
              child: Text(message),
            ),
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    ]);
  }
}

class _TutorialBubble extends CustomPainter {
  _TutorialBubble(
    this.pointerDirection, {
    this.color = _tutorialColor,
  });

  final PointerDirection pointerDirection;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Message Bubble
    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        0,
        0,
        size.width,
        size.height,
        bottomLeft: Radius.circular(4.r),
        bottomRight: Radius.circular(4.r),
        topRight: Radius.circular(4.r),
        topLeft: Radius.circular(4.r),
      ),
      paint,
    );

    // Pointer
    final Path path;
    switch (pointerDirection) {
      case PointerDirection.upRight:
        path = Path()
          ..moveTo(size.width - 10.w, 4.h)
          ..lineTo(size.width - 20.w, -10.h)
          ..lineTo(size.width - 30.w, 4.h)
          ..lineTo(size.width, 4.h);
        break;
      case PointerDirection.upLeft:
        path = Path()
          ..moveTo(20.w, 4.h)
          ..lineTo(30.w, -10.h)
          ..lineTo(40.w, 4.h)
          ..lineTo(size.width, 4.h);
        break;
      case PointerDirection.downLeft:
        path = Path()
          ..moveTo(20.w, size.height - 4.h)
          ..lineTo(30.w, size.height + 10.h)
          ..lineTo(40.w, size.height - 4.h)
          ..lineTo(0, size.height);
        break;
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class Ripples extends StatefulWidget {
  const Ripples({
    Key? key,
    this.size,
    this.color = _tutorialColor,
    required this.child,
  }) : super(key: key);

  final double? size;
  final Color color;
  final Widget child;

  @override
  _RipplesState createState() => _RipplesState();
}

class _RipplesState extends State<Ripples> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RipplePainter(
        _controller,
        color: widget.color,
      ),
      child: SizedBox(
        width: (widget.size ?? 40.r) * 2.125,
        height: (widget.size ?? 40.r) * 2.125,
        child: const SizedBox.shrink(),
      ),
    );
  }
}

class _RipplePainter extends CustomPainter {
  _RipplePainter(
    this._animation, {
    required this.color,
  }) : super(repaint: _animation);

  final Color color;
  final Animation<double> _animation;

  void circle(Canvas canvas, Rect rect, double value, int count) {
    final opacity = (1.0 - (value / 2.0)).clamp(0.0, 1.0);
    final paintColor = color.withOpacity(opacity);

    final size = rect.width / 2;
    final area = size * size;
    final radius = math.sqrt(area * value / 4);

    final paint = Paint()
      ..color = paintColor
      ..strokeWidth = count == 0 ? 2.r : 1.r
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);

    for (int wave = 2; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value, wave);
    }
  }

  @override
  bool shouldRepaint(_RipplePainter oldDelegate) => true;
}
