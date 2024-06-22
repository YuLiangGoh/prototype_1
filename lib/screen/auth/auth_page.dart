import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protptype_1/app/app_constant.dart';
import 'package:protptype_1/app/app_global.dart';
import 'package:protptype_1/component/animation/fade_in_widget.dart';
import 'package:protptype_1/component/animation/slide_in_widget.dart';
import 'package:protptype_1/gen/assets.gen.dart';
import 'package:protptype_1/screen/auth/component/auth_graph_widget.dart';
import 'package:protptype_1/screen/dashboard/dashboard_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const AuthGraphWidget(),
          gapHeight12,
          FadeInWidget(
            child: Assets.images.prototype1Logo.image(width: 68.w),
          ),
          gapHeight12,
          SlideInWidget(
            index: 1,
            child: FadeInWidget(
              index: 1,
              child: Text(
                'CreditCheck',
                style: textStyleW600(fontSize: 24),
              ),
            ),
          ),
          gapHeight8,
          SlideInWidget(
            index: 2,
            child: FadeInWidget(
              index: 2,
              child: Text(
                'Know your credit. Secure your future.',
                style: textStyleW500(fontSize: 14),
              ),
            ),
          ),
          gapHeight24,
          Flexible(
            child: FadeInWidget(
              index: 3,
              child: Padding(
                padding: paddingHorizontal16,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(45.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    backgroundColor: AppColors.blurDress,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DashboardPage()));
                  },
                  child: const Text('Log In'),
                ),
              ),
            ),
          ),
          gapHeight12,
          Flexible(
            child: FadeInWidget(
              index: 4,
              child: Padding(
                padding: paddingHorizontal16,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(45.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.grey.shade300, width: 1),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Text('Create New Account'),
                ),
              ),
            ),
          ),
          const Spacer(),
          FadeInWidget(
            index: 6,
            child: CircleAvatar(
              radius: 32.w,
              child: Assets.images.faceId.image(),
            ),
          ),
          gapHeight8,
          FadeInWidget(
            index: 8,
            child: Text(
              'Or log in with Face ID',
              style: textStyleW500(),
            ),
          ),
          const Spacer(),
          SlideInWidget(
            index: 9,
            child: FadeInWidget(
              index: 9,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'HELP',
                        style: textStyleW500()
                            .copyWith(color: Colors.grey.shade500),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'TERMS',
                        style: textStyleW500()
                            .copyWith(color: Colors.grey.shade500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
