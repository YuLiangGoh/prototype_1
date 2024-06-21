import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// A widget that applies a fade-in animation to its child.
///
/// Example usage:
///
/// ```dart
/// FadeInWidget(
///   child: Text('Hello, world!'),
/// )
/// ```
class FadeInWidget extends HookWidget {
  const FadeInWidget({
    super.key,
    this.duration = const Duration(milliseconds: 500),
    this.begin = 0,
    this.end = 1,
    this.curve = Curves.easeInOut,
    this.index = 0,
    this.interval = 100,
    required this.child,
  });

  final Duration duration;
  final double begin;
  final double end;
  final Curve curve;
  final int index;
  final int interval;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(duration: duration);
    final curvedAnimation =
        CurvedAnimation(parent: animationController, curve: curve);
    final animation =
        Tween<double>(begin: begin, end: end).animate(curvedAnimation);
    useAnimation(animation);

    useEffect(() {
      Future.delayed(Duration(milliseconds: interval * index), () {
        if (context.mounted) animationController.forward();
      });
      return;
    }, []);

    return FadeTransition(opacity: animation, child: child);
  }
}
