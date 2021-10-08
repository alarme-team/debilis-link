import 'package:debilis_link/widgets/Charts/basic.dart';
import 'package:debilis_link/widgets/Charts/line_chart.dart';
import 'package:debilis_link/widgets/features_panel.dart';
import 'package:debilis_link/widgets/footer.dart';
import 'package:debilis_link/widgets/main_hero.dart';
import 'package:debilis_link/widgets/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late ScrollController scrollController;
  bool _showBackToTopButton = false;

  @override
  void initState() {
    scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (scrollController.offset >= 500) {
            _showBackToTopButton = true; // show
          } else {
            _showBackToTopButton = false; // hide
          }
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                NavigationBar(scrollController: scrollController),
                const MainHero(),
                const Divider(height: 1),
                const FeaturesPanel(),
                const Divider(height: 1),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                const Footer(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: !_showBackToTopButton
          ? null
          : FloatingActionButton(
              onPressed: scrollToTop,
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.black,
              ),
            ),
    );
  }

  void scrollToTop() {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }
}
