import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final Function onClick;
  final String imageUrl;
  const SocialIconButton({required this.onClick, required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(
        size.width * .04,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image.asset(
        "assets/images/$imageUrl",
        width: size.width * .1,
        height: size.width * .1,
      ),
    );
  }
}
