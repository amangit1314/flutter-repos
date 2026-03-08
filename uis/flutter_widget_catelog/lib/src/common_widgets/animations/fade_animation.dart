import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_animations/multi_tween/multi_tween.dart';
import 'package:simple_animations/simple_animations.dart' as simple_animations;

enum AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation({Key? key, required this.delay, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AniProps>()
      ..add(
        AniProps.opacity,
        Tween(begin: 1.0, end: 1.0),
        500.milliseconds,
      )
      ..add(
        AniProps.translateY,
        Tween(begin: -30.0, end: 0.0),
        500.milliseconds,
        Curves.easeOut,
      );

    return simple_animations.PlayAnimation<MultiTweenValues<AniProps>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => AnimatedOpacity(
        opacity: value.get(AniProps.opacity),
        duration: tween.duration,
        child: Transform.translate(
          offset: Offset(0, value.get(AniProps.translateY)),
          child: child,
        ),
      ),
    );
  }
}
