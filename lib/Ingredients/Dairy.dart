import 'package:flutter/material.dart';
import 'package:flutter_auth/components/multiselect.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var appTitle = 'Ingredients';
  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Dairy(title: appTitle),
    );
  }
}

class Dairy extends StatelessWidget {
  final String title;

  Dairy({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: MultiSelect(
          titleText: 'Dairy',
          autovalidate: false,
          validator: (value) {
            if (value == null) {
              return 'Please select one or more option(s)';
            }
          },
          errorText: 'Please select one or more option(s)',
          dataSource: [
            {
              "display": "Milk",
              "value": 1,
            },
            {
              "display": "Yogurt",
              "value": 2,
            },
            {
              "display": "Cream",
              "value": 3,
            },
            {
              "display": "Buttermilk",
              "value": 4,
            },
            {
              "display": "Eggs",
              "value": 5,
            },
            {
              "display": "Cheese",
              "value": 6,
            },
            {
              "display": "Butter",
              "value": 7,

            },
            {
              "display": "Condensed Milk",
              "value": 8,
            },
            {
              "display": "Cottage Cheese",
              "value": 9,
            },
            {
              "display": "Baking Chocolate",
              "value": 10,
            },
          ],
          textField: 'display',
          valueField: 'value',
          filterable: true,
          required: true,
          value: null,
          onSaved: (value) {
            print('The value is $value');
          }
      ),),
    );
  }
}
