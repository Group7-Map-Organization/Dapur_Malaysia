import 'package:flutter/material.dart';
import 'package:dapur_malaysia/Homepage/recipeCreator/components/background.dart';
import 'package:dapur_malaysia/components/rounded_button.dart';
import 'package:dapur_malaysia/components/rounded_upload.dart';
import 'package:dapur_malaysia/components/rounded_input.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext) {
    final List<String> names = <String>[
      'Recipe Name1',
      'Recipe Name2',
      'Recipe Name3',
      'Recipe Name4',
      'Recipe Name5'
    ];
    return Background(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text('YOUR RECIPES',
                style: TextStyle(color: Colors.black, fontSize: 30)),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Card(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/dapur_malaysia.svg",
                              fit: BoxFit.cover,
                              height: 150.0,
                              width: 150.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '${names[index]}',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
