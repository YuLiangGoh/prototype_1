import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackdropWidget extends StatelessWidget {
  const BackdropWidget({
    super.key,
    required this.child,
    this.padding,
    this.radius,
  });

  final Widget child;
  final double? padding;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(radius ?? 32),
          ),
          padding: EdgeInsets.all((padding ?? 2).w),
          child: child,
        ),
      ),
    );
  }
}
