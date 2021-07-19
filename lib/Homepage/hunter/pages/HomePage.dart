import 'package:flutter/material.dart';
import 'package:dapur_malaysia/Homepage/hunter/widgets/BottomNavBarWidget.dart';
import 'package:dapur_malaysia/Homepage/hunter/widgets/PopularFoodsWidget.dart';
import 'package:dapur_malaysia/Homepage/hunter/widgets/SearchWidget.dart';
import 'package:dapur_malaysia/Homepage/hunter/widgets/TopMenus.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6F35A5),
        elevation: 0,
        title: Text(
          "Dapur Malaysia",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
