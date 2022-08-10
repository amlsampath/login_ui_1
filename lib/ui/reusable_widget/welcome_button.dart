import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;
  const WelcomeButton({
    required this.onPressed,
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.all(
          size.width * .05,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: size.width * .05,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
