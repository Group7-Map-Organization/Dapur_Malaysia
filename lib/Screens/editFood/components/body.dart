import 'package:dapur_malaysia/components/row_button.dart';
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
              "EDIT RECEIPT DETAILS",
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
              hintText: "Receipt Name",
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
              hintText: "Ingredients",
              onChanged: (value) {},
            ),
            Text(
              "Step of making",
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            RoundedInput(
              hintText: "Step of making",
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
            Row(
              children: [
                RowButton(
                  text: "SAVE",
                  press: () {},
                ),
                RowButton(
                  text: "DELETE RECEIPT",
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
