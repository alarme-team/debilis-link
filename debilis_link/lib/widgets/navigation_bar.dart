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
            children: [
              _NavBarItem("Features", () {
                widget.scrollController.animateTo(
                    widget.scrollController.position.maxScrollExtent / 2 - 5,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              }),
              const SizedBox(width: 40),
              const _NavBarItem("Sign in", null),
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
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    );
  }
}
