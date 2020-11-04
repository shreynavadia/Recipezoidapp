import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/HomePage/Homepage.dart';
import 'package:flutter_auth/Screens/Recipes/Recipes.dart';

void main() => runApp(cc());

class cc extends StatelessWidget {
  // This widget is the root
  // of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6F35A5),
          title: new Text("Chocolate Cake"),
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
          height: 700.0,
          child: Image.asset('assets/images/cake.png'),
        )),
      ),
    );
  }
}
