import 'package:flutter/material.dart';

class FeaturesPanel extends StatelessWidget {
  const FeaturesPanel({Key? key}) : super(key: key);

  static const int startShade = 200;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      child: Row(
        children: [
          const _FeatureCard("Features", startShade),
          Expanded(
            child: Column(
              children: [
                const _FeatureCard("Production", startShade + 100),
                Expanded(
                  child: Row(
                    children: const [
                      _FeatureCard("Optimization", startShade + 200),
                      _FeatureCard("Analyze", startShade + 300),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 40, fontFamily: "RobotoMono"),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard(this.title, this.shade);

  final String title;
  final int shade;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey[shade],
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            children: [
              _TitleText(title),
            ],
          ),
        ),
      ),
    );
  }
}
