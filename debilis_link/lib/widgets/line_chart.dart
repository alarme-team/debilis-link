import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  const LineChart({Key? key, required this.data}) : super(key: key);
  final List<TwoArgsData> data;

  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(
            text: 'Weekly repository activity',
            borderColor: Colors.black,
            textStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          legend: Legend(isVisible: true),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<TwoArgsData, String>>[
            LineSeries<TwoArgsData, String>(
              dataSource: widget.data,
              xValueMapper: (TwoArgsData data, _) => data.x,
              yValueMapper: (TwoArgsData data, _) => data.y,
              name: 'New Lines',
              dataLabelSettings: const DataLabelSettings(
                isVisible: true,
              ),
            ),
            LineSeries<TwoArgsData, String>(
              dataSource: widget.data,
              xValueMapper: (TwoArgsData data, _) => data.x,
              yValueMapper: (TwoArgsData data, _) =>
                  (data.y / 2 * (sin(data.y))).toInt().abs(),
              name: 'Deleted Lines',
              dataLabelSettings: const DataLabelSettings(
                isVisible: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TwoArgsData {
  TwoArgsData(this.x, this.y);

  String x;
  int y;
}
