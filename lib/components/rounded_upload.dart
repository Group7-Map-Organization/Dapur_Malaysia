import 'package:flutter/material.dart';
import 'package:dapur_malaysia/constants.dart';

class RoundedUploadButton extends StatelessWidget {
  final String text;
  final Function press;
  final IconData icon;
  final Color color, textColor;
  const RoundedUploadButton({
    Key key,
    this.text,
    this.press,
    this.icon = Icons.file_upload,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
