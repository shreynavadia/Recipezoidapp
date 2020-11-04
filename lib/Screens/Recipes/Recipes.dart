import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/AddRecipe/addrecipe.dart';
import 'package:flutter_auth/Screens/BookMark/bookmark.dart';
import 'package:flutter_auth/Screens/HomePage/Homepage.dart';
import 'package:flutter_auth/Screens/HomePage/profilepage.dart';
import 'package:flutter_auth/Screens/Recipes/bananapancake.dart';
import 'package:flutter_auth/Screens/Recipes/berrysorbet.dart';
import 'package:flutter_auth/Screens/Recipes/buttercookies.dart';
import 'package:flutter_auth/Screens/Recipes/chocolatecake.dart';
import 'package:flutter_auth/Screens/Recipes/chocolatefudge.dart';
import 'package:flutter_auth/Screens/Recipes/chocolateganache.dart';
import 'package:flutter_auth/Screens/Recipes/fruitpopsickle.dart';
import 'package:flutter_auth/Screens/Recipes/homemadepasta.dart';
import 'package:flutter_auth/Screens/Recipes/lassi.dart';
import 'package:flutter_auth/Screens/Recipes/naan.dart';
import 'package:flutter_auth/Screens/Recipes/tomatoomlette.dart';
import 'package:flutter_auth/Screens/Recipes/vegsalad.dart';
import 'package:flutter_auth/Screens/Recipes/vegsandwich.dart';
import 'package:flutter_auth/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Recipes(title: 'Recipes'),
    );
  }
}

class Recipes extends StatelessWidget {
  final String title;

  Recipes({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: kPrimaryColor, title: const Text('Recipes')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'LASSI',
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
                    return lassi();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'BERRY SORBET ',
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
                    return bs();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'NAAN',
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
                    return naan();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'CHOCOLATE GANACHE',
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
                    return cg();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'FRUIT POPSICKLE',
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
                    return fp();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'VEG SALAD',
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
                    return vs();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'CHOCOLATE CAKE',
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
                    return cc();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'HOME MADE PASTA',
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
                    return hmp();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'BANANA PANCAKE',
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
                    return bp();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'CHOCOLATE FUDGE',
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
                    return cf();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'VEG SANDWICH',
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
                    return vegs();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              'TOMATO OMLETTE',
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
                    return tomo();
                  },
                ),
              );
            },
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
                }),
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
              },
            ),
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
