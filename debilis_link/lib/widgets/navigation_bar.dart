import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key, required this.scrollController})
      : super(key: key);

  final ScrollController scrollController;

  @override
  State<StatefulWidget> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: const [
              Text(
                'debilis-link',
                style: TextStyle(fontFamily: "RobotoMono", fontSize: 48),
              ),
            ],
          ),
          Row(
            children: const [
              _NavBarItem("Features", null),
              SizedBox(width: 40),
              _NavBarItem("Sign in", null),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem(this.title, this.onPressed);

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
