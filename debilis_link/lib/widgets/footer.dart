import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Footer extends StatelessWidget {
  const Footer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
      child: Column(
        children: [
          const Divider(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "© 2021 dl-team",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Icon(
                LineIcons.values['code'],
                size: 36,
              )
            ],
          ),
        ],
      ),
    );
  }
}
