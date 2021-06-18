import 'package:flutter/material.dart';
import 'package:dapur_malaysia/Screens/Login/login_screen.dart';
import 'package:dapur_malaysia/Screens/Signup/components/background.dart';
import 'package:dapur_malaysia/Screens/Signup/components/or_divider.dart';
import 'package:dapur_malaysia/Screens/Signup/components/social_icon.dart';
import 'package:dapur_malaysia/components/already_have_an_account_acheck.dart';
import 'package:dapur_malaysia/components/rounded_button.dart';
import 'package:dapur_malaysia/components/rounded_input_field.dart';
import 'package:dapur_malaysia/components/rounded_password_field.dart';
//import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget 
{
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> 
{
  String radioButtonItem = "ONE";
  int id = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            /*SvgPicture.asset(
              "assets/icons/dapur_malaysia.svg",
              height: size.height * 0.2,
            ),*/
            Text(
              "CREATE ACCOUNT",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            RoundedInputField(
              hintText: "Your Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Text(
              "Choose a user:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: (val) 
                  {
                    setState(() {
                      radioButtonItem = 'ONE';
                      id = 1;
                    });
                  }
                ),
                Text(
                  "Recipe Creator",
                  style: new TextStyle(fontSize: 15),
                ),
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) 
                  {
                    setState(() {
                      radioButtonItem = 'TWO';
                      id = 2;
                    });
                  }
                ),
                Text(
                  "Recipe Hunter",
                  style: new TextStyle(fontSize: 15),
                ),
              ], 
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
