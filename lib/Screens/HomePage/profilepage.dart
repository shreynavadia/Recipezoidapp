import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/HomePage/Homepage.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF6F35A5),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.account_circle,
                  size: 120,
                  color: Colors.grey,
                ),
                backgroundColor: Color(0xFFF1E6FF),
                radius: 60.0,
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.deepPurple.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                    title: Text(
                      'khuship32000@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple.shade900,
                        fontFamily: 'Comfortaa',
                      ),
                    ),
                  ),
                ),
              ),
              RoundedButton(
                color: Colors.black,
                text: "LOG OUT",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WelcomeScreen();
                  }));
                },
              ),
              RoundedButton(
                color: Colors.black,
                text: "BACK",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyHomePage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
