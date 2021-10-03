import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  ButtonCard(this.title, this.onPressed);

  String title;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          width: double.infinity,
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
