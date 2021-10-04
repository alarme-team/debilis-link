import 'package:flutter/material.dart';

class MainHero extends StatelessWidget {
  const MainHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _AnalyticsCard(),
                Expanded(
                  child: Text(
                    "Second panel\nplace gif here",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AnalyticsCard extends StatelessWidget {
  const _AnalyticsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Discover Git \nAnalytics",
                style: TextStyle(
                  fontSize: 72,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Easily identify bottlenecks with dev \npipeline observability",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ],
          ),
          const Divider(
            height: 50,
            indent: 150,
            endIndent: 150,
            color: Colors.black,
          ),
          TextButton(
            onPressed: null,
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
