import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: BorderSide(color: Color(0xFFEDEDED)),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
        ),
        onPressed: press,
        child: Row(
          children: [
          Image.asset(
            imageSrc,
            height: 40,
          ),
          SizedBox(width: kDefaultPadding),
          Text(text)
          ],
        ),
      ),
    );
  }
}
