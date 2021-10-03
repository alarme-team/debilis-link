import 'package:debilis_link/views/statistics_veiw.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(ChartApp());
}

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF151247),
        ),
      ),
      home: const StatisticsView(),
    );
  }
}
