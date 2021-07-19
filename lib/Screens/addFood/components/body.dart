import 'package:flutter/material.dart';
import 'package:dapur_malaysia/Screens/Login/components/background.dart';
import 'package:dapur_malaysia/components/rounded_button.dart';
import 'package:dapur_malaysia/components/rounded_upload.dart';
import 'package:dapur_malaysia/components/rounded_input.dart';
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
              "RECIPE DETAILS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "Recipe's Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            RoundedInput(
              hintText: "Enter recipe's name",
              onChanged: (value) {},
            ),
            Text(
              "Recipe's Ingredients",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            RoundedInput(
              hintText: "Enter the ingredients",
              onChanged: (value) {},
            ),
            Text(
              "Step of making",
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            RoundedInput(
              hintText: "Enter step making recipe",
              onChanged: (value) {},
            ),
            Text(
              "Recipe's Photo",
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            RoundedUploadButton(
              text: "Upload your recipe's photo here",
              press: () {},
            ),
            RoundedButton(
              text: "UPLOAD",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
