
//! FL Charts Package Error 
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class BarChartWidget extends StatelessWidget {
//   final Map<String, int> data;
//   const BarChartWidget({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     final items = [
//       BarChartGroupData(
//         x: 0,
//         barRods: [
//           BarChartRodData(toY: data['gd']!.toDouble(), color: Colors.blue),
//         ],
//       ),
//       BarChartGroupData(
//         x: 1,
//         barRods: [
//           BarChartRodData(toY: data['l1']!.toDouble(), color: Colors.green),
//         ],
//       ),
//       BarChartGroupData(
//         x: 2,
//         barRods: [
//           BarChartRodData(toY: data['l2']!.toDouble(), color: Colors.orange),
//         ],
//       ),
//     ];
//     return BarChart(
//       BarChartData(
//         borderData: FlBorderData(show: false),
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(
//           leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
//           bottomTitles: AxisTitles(
//             sideTitles: SideTitles(
//               showTitles: true,
//               getTitlesWidget: (value, _) {
//                 switch (value.toInt()) {
//                   case 0:
//                     return const Text('GD');
//                   case 1:
//                     return const Text('L1');
//                   case 2:
//                     return const Text('L2');
//                   default:
//                     return const SizedBox();
//                 }
//               },
//             ),
//           ),
//         ),
//         barGroups: items,
//       ),
//     );
//   }
// }
