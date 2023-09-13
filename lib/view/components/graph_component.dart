import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/graph_duration_component.dart';

class GraphComponent extends StatefulWidget {
  GraphComponent({super.key});
  final Color leftBarColor = ColorsConstant.white;
  final Color rightBarColor = ColorsConstant.neonGreen;
  final Color avgColor = ColorsConstant.neonGreen;
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<GraphComponent> {
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 10, 12);
    final barGroup2 = makeGroupData(1, 5, 14);
    final barGroup3 = makeGroupData(2, 5, 8);
    final barGroup4 = makeGroupData(3, 2, 3);
    final barGroup5 = makeGroupData(4, 3, 18);
    final barGroup6 = makeGroupData(5, 6, 3);
    //final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      //barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(

        //height: MediaQuery.of(context).size.height*0.15,
        padding: EdgeInsets.only(top: 12.h, left: 12.w),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,

            end: Alignment.bottomLeft,
            stops: [
              0.1,0.7
            ],
            colors: [
              ColorsConstant.white,
              ColorsConstant.grey
            ]
          ),
          borderRadius: BorderRadius.circular(20),
          color: ColorsConstant.white.withOpacity(0.3),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Transactions',
              style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8.h,
            ),
            const DurationComponent(),
            SizedBox(
              height: 8.h,
            ),
            Expanded(
              child: BarChart(
                BarChartData(
                  maxY: 17,
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: ColorsConstant.white,
                      getTooltipItem: (a, b, c, d) => null,
                    ),

                    // touchCallback: (FlTouchEvent event, response) {
                    //   if (response == null || response.spot == null) {
                    //     setState(() {
                    //       touchedGroupIndex = -1;
                    //       showingBarGroups = List.of(rawBarGroups);
                    //     });
                    //     return;
                    //   }
                    //
                    //   touchedGroupIndex = response.spot!.touchedBarGroupIndex;
                    //
                    //   setState(() {
                    //     if (!event.isInterestedForInteractions) {
                    //       touchedGroupIndex = -1;
                    //       showingBarGroups = List.of(rawBarGroups);
                    //       return;
                    //     }
                    //     showingBarGroups = List.of(rawBarGroups);
                    //     if (touchedGroupIndex != -1) {
                    //       var sum = 0.0;
                    //       for (final rod
                    //       in showingBarGroups[touchedGroupIndex].barRods) {
                    //         sum += rod.toY;
                    //       }
                    //       final avg = sum /
                    //           showingBarGroups[touchedGroupIndex]
                    //               .barRods
                    //               .length;
                    //
                    //       showingBarGroups[touchedGroupIndex] =
                    //           showingBarGroups[touchedGroupIndex].copyWith(
                    //             barRods: showingBarGroups[touchedGroupIndex]
                    //                 .barRods
                    //                 .map((rod) {
                    //               return rod.copyWith(
                    //                   toY: avg, color: widget.avgColor);
                    //             }).toList(),
                    //           );
                    //     }
                    //   });
                    // },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: bottomTitles,
                        reservedSize: 35,
                      ),
                    ),leftTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                      // reservedSize: 28,
                      // interval: 1,
                      //getTitlesWidget: leftTitles,
                    ),
                  ),

                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: showingBarGroups,
                  gridData: const FlGridData(show: false),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      ),
    );
  }

  // Widget leftTitles(double value, TitleMeta meta) {
  //   const style = TextStyle(
  //     color: Color(0xff7589a2),
  //     fontWeight: FontWeight.bold,
  //     fontSize: 14,
  //   );
  //   String text;
  //   if (value == 0) {
  //     text = '1K';
  //   } else if (value == 10) {
  //     text = '5K';
  //   } else if (value == 19) {
  //     text = '10K';
  //   } else {
  //     return Container();
  //   }
  //   return SideTitleWidget(
  //     axisSide: meta.axisSide,
  //     space: 0,
  //     child: Text(text, style: style),
  //   );
  // }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['5', '10', '15', '20', '25', '30'];

    final Widget text = Text(
      titles[value.toInt()],
      style: TextStyle(
        color: ColorsConstant.white,
        fontWeight: FontWeight.bold,
        fontSize: 14.sp,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 2, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 1,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: widget.leftBarColor,
          width: width*2,
        ),
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: width*2,
        ),

      ],
    );
  }

  // Widget makeTransactionsIcon() {
  //   const width = 4.5;
  //   const space = 3.5;
  //   return Row(
  //     mainAxisSize: MainAxisSize.min,
  //     children: <Widget>[
  //       Container(
  //         width: width,
  //         height: 10,
  //         color: Colors.white.withOpacity(0.4),
  //       ),
  //       const SizedBox(
  //         width: space,
  //       ),
  //       Container(
  //         width: width,
  //         height: 28,
  //         color: Colors.white.withOpacity(0.8),
  //       ),
  //       const SizedBox(
  //         width: space,
  //       ),
  //       Container(
  //         width: width,
  //         height: 42,
  //         color: Colors.white.withOpacity(1),
  //       ),
  //       const SizedBox(
  //         width: space,
  //       ),
  //       Container(
  //         width: width,
  //         height: 28,
  //         color: Colors.white.withOpacity(0.8),
  //       ),
  //       const SizedBox(
  //         width: space,
  //       ),
  //       Container(
  //         width: width,
  //         height: 10,
  //         color: Colors.white.withOpacity(0.4),
  //       ),
  //     ],
  //   );
  // }
}