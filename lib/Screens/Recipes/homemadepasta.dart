import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/HomePage/Homepage.dart';
import 'package:flutter_auth/Screens/Recipes/Recipes.dart';

void main() => runApp(hmp());

class hmp extends StatelessWidget {
  // This widget is the root
  // of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6F35A5),
          title: new Text("Home Made Pasta"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Recipes();
                    },
                  ),
                );
              },
            ),
          ],
        ),
        body: Center(
            child: SizedBox(
          width: 400.0,
          height: 900.0,
          child: Image.asset('assets/images/pasta.png', height: 900.0),
        )),
      ),
    );
  }
}
