import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protptype_1/app/app_constant.dart';
import 'package:protptype_1/app/app_global.dart';
import 'package:protptype_1/component/animation/fade_in_widget.dart';
import 'package:protptype_1/component/animation/slide_in_widget.dart';
import 'package:protptype_1/gen/assets.gen.dart';
import 'package:protptype_1/screen/dashboard/component/backdrop_widget.dart';
import 'package:protptype_1/screen/dashboard/component/circular_slider.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.whiteSmoke,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 0.45.sh,
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.dashboardBg.path),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: paddingHorizontal16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        BackdropWidget(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 15.r,
                                child: const Text('J'),
                              ),
                              gapWidth8,
                              Text(
                                'John',
                                style: textStyleW400(fontSize: 14)
                                    .copyWith(color: Colors.white),
                              ),
                              gapWidth8,
                              const Icon(
                                Icons.chevron_right_rounded,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        gapWidth8,
                        Flexible(
                          child: BackdropWidget(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 15.r,
                                  backgroundColor: Colors.transparent,
                                  child: Icon(
                                    Icons.search_rounded,
                                    size: 18.r,
                                    color: Colors.white,
                                  ),
                                ),
                                Flexible(
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Search',
                                      hintStyle: textStyleW400(fontSize: 14)
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        gapWidth8,
                        BackdropWidget(
                          child: CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.transparent,
                            child: Icon(
                              Icons.notifications_none_rounded,
                              size: 18.r,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30.h),
                      padding: paddingHorizontal16,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Last Month Expenses'.toUpperCase(),
                                        style: textStyleW400(fontSize: 11)
                                            .copyWith(color: Colors.white),
                                      ),
                                      gapHeight8,
                                      FadeInWidget(
                                        index: 1,
                                        child: Text(
                                          '\$7,400.00',
                                          style: textStyleW500(fontSize: 30)
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: EdgeInsets.all(4.w),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            gapWidth4,
                                            Text(
                                              '-\$1,200.00',
                                              style: textStyleW600(fontSize: 11)
                                                  .copyWith(
                                                color: Colors.black,
                                              ),
                                            ),
                                            gapWidth4,
                                            const Icon(
                                              Icons.arrow_downward_rounded,
                                              color: Colors.red,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                gapWidth24,
                                Expanded(
                                  flex: 4,
                                  child: BackdropWidget(
                                    padding: 24,
                                    radius: 16,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CircleAvatar(
                                              radius: 5.r,
                                              backgroundColor:
                                                  const Color(0xFFFD1960),
                                            ),
                                            gapWidth8,
                                            Text(
                                              'House',
                                              style: textStyleW400(fontSize: 11)
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        gapHeight8,
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CircleAvatar(
                                              radius: 5.r,
                                              backgroundColor:
                                                  const Color(0xFF29D3E8),
                                            ),
                                            gapWidth8,
                                            Text(
                                              'Healthcare',
                                              style: textStyleW400(fontSize: 11)
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        gapHeight8,
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CircleAvatar(
                                              radius: 5.r,
                                              backgroundColor:
                                                  const Color(0xFF18C737),
                                            ),
                                            gapWidth8,
                                            Text(
                                              'Shopping',
                                              style: textStyleW400(fontSize: 11)
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          gapHeight12,
                          MultiCircularSlider(
                            width: MediaQuery.of(context).size.width - 32,
                            height: 10.h,
                            trackWidth: 10,
                            progressBarType: MultiCircularSliderType.linear,
                            values: const [0.5, 0.3, 0.2],
                            colors: const [
                              Color(0xFFFD1960),
                              Color(0xFF29D3E8),
                              Color(0xFF18C737),
                            ],
                            showTotalPercentage: false,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0.45.sh - 30.h),
              padding: paddingHorizontal16,
              child: Column(
                children: [
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12.w),
                      child: SlideInWidget(
                        index: 3,
                        child: FadeInWidget(
                          index: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Net Worth',
                                    style: textStyleW600(fontSize: 14),
                                  ),
                                  const Icon(Icons.more_horiz_rounded),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '+\$9,820.00',
                                        style: textStyleW600(fontSize: 12)
                                            .copyWith(
                                          color: Colors.grey.shade500,
                                        ),
                                      ),
                                      gapWidth4,
                                      const Icon(
                                        Icons.arrow_upward_rounded,
                                        color: Colors.green,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                  gapHeight12,
                                  Text(
                                    '\$27,5420.00',
                                    style: textStyleW500(fontSize: 36)
                                        .copyWith(height: 0.9),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  gapHeight12,
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12.w),
                            child: SlideInWidget(
                              index: 6,
                              child: FadeInWidget(
                                index: 7,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Cash Flow',
                                          style: textStyleW600(fontSize: 14),
                                        ),
                                        const Icon(
                                          Icons.chevron_right_rounded,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    gapHeight12,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Left in April',
                                          style: textStyleW600(fontSize: 12)
                                              .copyWith(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),
                                        gapHeight12,
                                        Text(
                                          '\$9,820.00',
                                          style: textStyleW500(fontSize: 24)
                                              .copyWith(
                                            height: 0.9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12.h),
                        Flexible(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12.w),
                            child: SlideInWidget(
                              index: 7,
                              child: FadeInWidget(
                                index: 8,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Investment',
                                          style: textStyleW600(fontSize: 14),
                                        ),
                                        const Icon(
                                          Icons.chevron_right_rounded,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    gapHeight12,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total Investment',
                                          style: textStyleW600(fontSize: 12)
                                              .copyWith(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),
                                        gapHeight12,
                                        Text(
                                          '\$27,5420.00',
                                          style: textStyleW500(fontSize: 24)
                                              .copyWith(
                                            height: 0.9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapHeight12,
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card_rounded),
                label: 'Credit',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_rounded),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded),
                label: 'Settings',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            selectedItemColor: AppColors.blurDress,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
          ),
        ),
      ),
    );
  }
}
