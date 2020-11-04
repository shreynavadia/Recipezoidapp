import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/HomePage/Homepage.dart';

void main() => runApp(bc());

class bc extends StatelessWidget {
  // This widget is the root
  // of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Butter Cookies'),
        ),
        body: Center(
            child: SizedBox(
          width: 400.0,
          height: 700.0,
          child: Image.asset('assets/imaes/Naan.png'),
        )

            /*Row(
            children: <Widget>[
              Image.asset('assets/images/Naan.png', height: 750, width: 300),
            ],
          ),*/
            ),
      ),
    );
  }
}
