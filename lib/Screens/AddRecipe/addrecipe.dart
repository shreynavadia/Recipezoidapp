import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/HomePage/Homepage.dart';
import 'package:flutter_auth/Screens/BookMark/bookmark.dart';
import 'package:flutter_auth/Screens/HomePage/profilepage.dart';
import 'package:flutter_auth/Screens/Recipes/Recipes.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/Ingredients/Fruits.dart';
import 'package:flutter_auth/Ingredients/Vegetables.dart';
import 'package:flutter_auth/Ingredients/Dairy.dart';
import 'package:flutter_auth/Ingredients/FloursandBaking.dart';
import 'package:flutter_auth/Ingredients/BeansandLentils.dart';
import 'package:flutter_auth/Ingredients/Spices,SeasoningandCondiments.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddRecipe(title: 'AddRecipe'),
    );
  }
}

class AddRecipe extends StatelessWidget {
  final String title;

  AddRecipe({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kPrimaryColor, title: const Text('Add a Recipe')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxHeight: 100),
            child: SingleChildScrollView(
              child: TextField(
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Comfortaa',
                ),
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Type Your Recipe Here :",
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            child: Center(child: Vegetable()),
          ),
          Container(
            height: 200,
            child: Center(child: Fruit()),
          ),
          Container(
            height: 200,
            child: Center(child: Dairy()),
          ),
          Container(
            height: 200,
            child: Center(child: FandB()),
          ),
          Container(
            height: 200,
            child: Center(child: BandL()),
          ),
          Container(
            height: 200,
            child: Center(child: SSandC()),
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu Bar',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                ),
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
            ListTile(
              title: Text(
                'Ingredients',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'Comfortaa',
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyHomePage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Recipes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'Comfortaa',
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
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
            ListTile(
              title: Text(
                'BookMarks',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'Comfortaa',
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BookMarkPage();
                    },
                  ),
                );
              },
            ),
            ListTile(
                title: Text(
                  'Add a Recipe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AddRecipe();
                      },
                    ),
                  );
                }),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'Comfortaa',
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
