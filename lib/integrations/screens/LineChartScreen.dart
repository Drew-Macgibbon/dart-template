import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/integrations/utils/colors.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';

class LineChartScreen extends StatefulWidget {
  @override
  LineChartScreenState createState() => LineChartScreenState();
}

class LineChartScreenState extends State<LineChartScreen> {
  List<Color> gradientColor = [lineCChart, lineCChart1];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: appBar(context, 'Line Chart'),
      body: Container(
        padding: EdgeInsets.only(right: 16),
        height: 350,
        width: 350,
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 6,
            titlesData: FlTitlesData(),
            gridData: FlGridData(
                show: true,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: borderText.withOpacity(0.3),
                    strokeWidth: 1,
                  );
                },
                drawVerticalLine: true),
            borderData:
                FlBorderData(border: Border.all(color: borderText, width: 1)),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(2.6, 2),
                  FlSpot(4.9, 5),
                  FlSpot(6.8, 2.5),
                  FlSpot(8, 4),
                  FlSpot(9.5, 3),
                  FlSpot(11, 4),
                ],
                isCurved: true,
                color: gradientColor.first,
                barWidth: 5,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  color: gradientColor.first,                    
                ),
              ),
            ],
          ),
        ),
      ).center(),
    );
  }
}

// const titleData = FlTitlesData(
//   show: true,
//     leftTitles: const AxisTitles(
//       sideTitles: SideTitles(
//         showTitles: true,
//         // getTextStyles: (context) => boldTextStyle(color: TransactionRight),
//         getTitlesWidget: (double value, TitleMeta meta) {
//           switch (value.toInt()) {
//             case 0:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text('10k'));
//             case 1:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text('30k'));
//             case 2:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text('50k'));
//             default:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text(''));
//           }
//         },
//       ),
//     ),
    
//     bottomTitles: AxisTitles(
//       sideTitles: SideTitles(
//         showTitles: true,
//         // getTextStyles: (context) => boldTextStyle(color: TransactionRight),
//         getTitlesWidget: (double value, TitleMeta meta) {
//           switch (value.toInt()) {
//             case 0:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text('1M'));
//             case 1:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text('2M'));
//             case 2:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text('3M'));
//             case 3:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text('5M'));
//             default:
//               return SideTitleWidget(
//                   axisSide: meta.axisSide, child: Text(''));
//           }
//         },
//       ),
//     ),
//   ),
//         bottomTitles: SideTitles(
//           getTextStyles: (context) => boldTextStyle(color: borderText),
//           showTitles: true,
//           margin: 8,
//           reservedSize: 38,
//           getTitles: (val) {
//             switch (val.toInt()) {
//               case 2:
//                 return 'MAR';
//               case 5:
//                 return 'JUN';
//               case 8:
//                 return 'SEP';
//             }
//             return '';
//           },
//         ),
//       );
// )
