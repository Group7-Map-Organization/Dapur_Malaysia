import 'package:flutter/material.dart';
// import 'package:dapur_malaysia/Screens/Login/components/background.dart';
// import 'package:dapur_malaysia/Screens/Welcome/welcome_screen.dart';
// import 'package:dapur_malaysia/components/rounded_button.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:dapur_malaysia/Screens/Login/components/body.dart';
import 'package:dapur_malaysia/User.dart';

class HomepageHunter extends StatelessWidget {
  const HomepageHunter({
    Key key,
  }) : super(key: key);

  _getName() {
    List<User> u = userData.getUser();
    var name = u.map((u) => u.name);
    return name.toString();
  }

  _getEmail() {
    List<User> u = userData.getUser();
    var email = u.map((u) => u.email);
    return email.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //leading: IconButton(icon: Icon(Icons.menu),onPressed: (){}),
        title: Text("WELCOME"),
        // actions: <Widget>[
        //   IconButton(icon: Icon(Icons.search),onPressed: (){}),
        //
        // ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(_getName()),
              accountEmail: new Text(_getEmail()),
            )
          ],
        ),
      ),
      body: TransferData(),
    );
  }
}
