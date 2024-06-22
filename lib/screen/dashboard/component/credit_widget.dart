import 'package:flutter/material.dart';
import 'package:protptype_1/app/app_global.dart';
import 'package:protptype_1/component/animation/fade_in_widget.dart';
import 'package:protptype_1/component/animation/slide_in_widget.dart';

class CreditWidget extends StatelessWidget {
  const CreditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInWidget(
          child: SlideInWidget(
            child: Text(
              'Credit!',
              style: textStyleW600(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
