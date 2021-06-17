import 'package:flutter/material.dart';
import 'package:dapur_malaysia/Screens/Signup/components/bodyHunter.dart';
import 'package:dapur_malaysia/Screens/Signup/components/bodyCreator.dart';
import 'package:dapur_malaysia/Screens/Welcome/components/background.dart';
import 'package:dapur_malaysia/components/rounded_button.dart';
import 'package:dapur_malaysia/constants.dart';
import 'package:flutter_svg/svg.dart';


class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO DAPUR MALAYSIA",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/dapur_malaysia.svg",

              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "RECIPE CREATOR",
              color: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BodyCreator();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "RECIPE HUNTER",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BodyHunter();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

