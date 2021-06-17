import 'package:flutter/material.dart';
import 'package:dapur_malaysia/Screens/Login/components/background.dart';
import 'package:dapur_malaysia/components/rounded_button.dart';
import 'package:dapur_malaysia/components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Text(
              "YOUR PROFILE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            RoundedInputField(
              hintText: "Your Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            Text(
              "CHANGE PASSWORD?",
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            RoundedInputField(
              hintText: "Enter Your Current Password",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "New Password",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Confirm New Password",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SAVE",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
