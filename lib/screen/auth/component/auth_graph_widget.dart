import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protptype_1/app/app_constant.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class AuthGraphWidget extends StatelessWidget {
  const AuthGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = <ChartData>[
      ChartData(2010, 3.43, 2.1),
      ChartData(2011, 4.7, 2.5),
      ChartData(2012, 4.5, 6.45),
      ChartData(2013, 4.9, 2.6),
      ChartData(2014, 10, 3.8),
      ChartData(2015, 8, 2.1),
    ];
    return Container(
      color: AppColors.whiteSmoke,
      height: 0.25.sh,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Stack(
          fit: StackFit.loose,
          children: [
            SfSparkAreaChart(
              data: const <double>[0, 0.2, 0.4, 0.2, 0.5, 0.4, 0.7],
              color: Colors.white,
              axisLineColor: Colors.transparent,
              borderWidth: 2,
              borderColor: AppColors.frenchGrey.withOpacity(0.6),
            ),
            SfCartesianChart(
              margin: EdgeInsets.zero,
              plotAreaBorderWidth: 0,
              primaryXAxis: const NumericAxis(
                isVisible: false,
              ),
              primaryYAxis: const NumericAxis(
                isVisible: false,
              ),
              enableAxisAnimation: false,
              series: <CartesianSeries>[
                SplineAreaSeries<ChartData, int>(
                  animationDuration: 0,
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  borderColor: AppColors.brightLilic,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.brightLilic.withOpacity(0.3),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                SplineAreaSeries<ChartData, int>(
                  animationDuration: 0,
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y1,
                  borderColor: AppColors.blurDress,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.blurDress.withOpacity(0.3),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final int x;
  final double y;
  final double y1;
}
