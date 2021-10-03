import 'package:debilis_link/widgets/custom_card.dart';
import 'package:debilis_link/widgets/line_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class StatisticsView extends StatefulWidget {
  const StatisticsView({Key? key}) : super(key: key);

  @override
  _StatisticsViewState createState() => _StatisticsViewState();
}

class _StatisticsViewState extends State<StatisticsView> {
  List<TwoArgsData> data = [
    TwoArgsData("01.09", 345),
    TwoArgsData("02.09", 125),
    TwoArgsData("03.09", 450),
    TwoArgsData("04.09", 500),
    TwoArgsData("05.09", 600),
    TwoArgsData("06.09", 460),
    TwoArgsData("07.09", 300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter stack test-project'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 30,
            child: Container(
              color: const Color(0xFF252257),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(data: "Репозиторий 1", color: Colors.white),
                  CustomText(data: "Репозиторий 2", color: Colors.white),
                  CustomText(data: "Репозиторий 3", color: Colors.white),
                  CustomText(data: "Репозиторий 4", color: Colors.white),
                  CustomText(data: "Репозиторий 5", color: Colors.white),
                  CustomText(data: "Репозиторий 6", color: Colors.white),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 20,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(data: "Обзор"),
                  CustomText(data: "Рекомендации"),
                  CustomText(data: "Статистика"),
                  CustomText(data: "Отчеты"),
                  CustomText(data: "Прогноз"),
                  CustomText(data: "Настройки")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 240,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Обзор",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  LineChart(data: data),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: const [
                      CustomCard(widget: Text("c1")),
                      CustomCard(widget: Text("c2")),
                      CustomCard(widget: Text("c3")),
                      CustomCard(widget: Text("c4")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void fetchData() {
    print("fetch");
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.data = "Not found",
    this.color = Colors.black,
  }) : super(key: key);

  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Text(
        data,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
