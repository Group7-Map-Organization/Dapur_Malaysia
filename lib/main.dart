// import 'package:dapur_malaysia/Screens/addFood/addFood_screen.dart';
//import 'package:dapur_malaysia/Screens/editFood/editFood_screen.dart';
import 'package:flutter/material.dart';
import 'package:dapur_malaysia/Screens/Welcome/welcome_screen.dart';
// import 'package:dapur_malaysia/Screens/Profile/profile_screen.dart';
import 'package:dapur_malaysia/constants.dart';
// import 'package:dapur_malaysia/Homepage/homepageCreator.dart';
// import 'package:dapur_malaysia/Homepage/hunter/pages/HomePage.dart';
// import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dapur Malaysia',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
      // home: ProfileScreen(),
      // home: HomePage(),
      // home: HomepageCreator(), 
      // home: addFoodScreen(), 
      //home: editFoodScreen(), 
    );
  }
}
