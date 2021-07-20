import 'package:dapur_malaysia/Homepage/recipeCreator/recipeCreator_home.dart';
import 'package:dapur_malaysia/Homepage/hunter/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:dapur_malaysia/Screens/Login/components/background.dart';
import 'package:dapur_malaysia/Screens/Signup/signup_screen.dart';
import 'package:dapur_malaysia/components/already_have_an_account_acheck.dart';
import 'package:dapur_malaysia/components/rounded_button.dart';
import 'package:dapur_malaysia/components/rounded_input_field.dart';
import 'package:dapur_malaysia/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dapur_malaysia/components/text_field_container.dart';
import 'package:dapur_malaysia/constants.dart';
import 'package:dapur_malaysia/User.dart';
import 'package:dapur_malaysia/Screens/Login/components/Services.dart';

final emailController = TextEditingController();
final passwordController = TextEditingController();

// ignore: camel_case_types
class sendEmail {
  // ignore: non_constant_identifier_names
  static String emel = '';

  static setEmail(String e) {
    print(e);
    emel = e;
  }

  static getEmail() {
    return emel;
  }
}

// ignore: camel_case_types
class userData {
  // ignore: non_constant_identifier_names
  static List<User> _user;

  static setUser(List<User> u) {
    print(u);
    _user = u;
  }

  static getUser() {
    return _user;
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TransferData(),
    );
  }
}

class TransferData extends StatefulWidget {
  TransferDataWidget createState() => TransferDataWidget();
}

class TransferDataWidget extends State {
  List<User> _user = [];

  // Boolean variable for CircularProgressIndicator.
  bool visible = false;

  Future webCall() async {
    // Showing CircularProgressIndicator using State.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;

    sendEmail.setEmail(email);

    Services.getUser(email, password).then((user) {
      setState(() {
        _user = user;
      });
      print("Length ${user.length}");
      setState(() {
        visible = false;
      });
      if (user.length == 0) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text('Invalid Login'),
              actions: <Widget>[
                FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      } else {
        var a = _user.map((user) => user.userType);
        userData.setUser(_user);
        String userType = a.toString();
        print(userType);
        String type1 = '(creator)';
        String type2 = '(hunter)';
        if (userType == type1) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return RecipeCreatorHomeScreen();
            },
          );
        } else if (userType == type2) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return HomePage();
            },
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/dapur_malaysia.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                webCall();
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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

class EmailField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const EmailField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: emailController,
        autocorrect: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: passwordController,
        autocorrect: true,
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          // suffixIcon: Icon(
          //   Icons.visibility,
          //   color: kPrimaryColor,
          // ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
