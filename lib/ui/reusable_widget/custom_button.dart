import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Function onPressed;
  final String title;
  CustomButton({
    required this.onPressed,
    required this.title,
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
        width: size.width,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.red[300],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: size.width * .05,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
