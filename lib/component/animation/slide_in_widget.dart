import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// A widget that animates its child by sliding it into view.
///
/// Example:
/// ```dart
/// SlideInWidget(
///   direction: SlideDirection.left,
///   child: Container(
///     width: 200,
///     height: 200,
///     color: Colors.blue,
///   ),
/// )
/// ```
class SlideInWidget extends HookWidget {
  const SlideInWidget({
    super.key,
    this.duration = const Duration(milliseconds: 500),
    this.begin = const Offset(0, 1),
    this.end = Offset.zero,
    this.curve = Curves.easeInOut,
    this.index = 0,
    this.interval = 100,
    required this.child,
  });

  final Duration duration;
  final Offset begin;
  final Offset end;
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
        Tween<Offset>(begin: begin, end: end).animate(curvedAnimation);
    useAnimation(animation);

    useEffect(() {
      Future.delayed(Duration(milliseconds: interval * index), () {
        if (context.mounted) animationController.forward();
      });
      return;
    }, []);

    return SlideTransition(
      position: animation,
      child: child,
    );
  }
}
