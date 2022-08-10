import 'package:flutter/material.dart';

class CustomTextDivider extends StatelessWidget {
  const CustomTextDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            // ignore: prefer_const_constructors
            child: Divider(
          height: 1,
          color: Colors.black,
        )),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Or continue with "),
        ),
        Expanded(
            // ignore: prefer_const_constructors
            child: Divider(
          height: 2,
          color: Colors.black,
        )),
      ],
    );
  }
}
