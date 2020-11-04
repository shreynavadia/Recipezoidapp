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
      home: SSandC(title: appTitle),
    );
  }
}

class SSandC extends StatelessWidget {
  final String title;

  SSandC({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: MultiSelect(
          titleText: 'Spices,Seasonings and Condiments',
          autovalidate: false,
          validator: (value) {
            if (value == null) {
              return 'Please select one or more option(s)';
            }
          },
          errorText: 'Please select one or more option(s)',
          dataSource: [
            {
              "display": " White Sugar",
              "value": 1,
            },
            {
              "display": "Honey",
              "value": 2,
            },
            {
              "display": "Soda",
              "value": 3,
            },
            {
              "display": "Salad Dressing",
              "value": 4,
            },
            {
              "display": "Oil",
              "value": 5,
            },
            {
              "display": "Brown Sugar",
              "value": 6,
            },
            {
              "display": "Chilly Flakes",
              "value": 7,

            },
            {
              "display": "Oregano",
              "value": 8,
            },
            {
              "display": "Black Pepper",
              "value": 9,
            },
            {
              "display": "Vanilla Essence",
              "value": 10,
            },
            {
              "display": "Cinnamon",
              "value": 11,
            },
            {
              "display": "Turmeric",
              "value": 12,
            },
            {
              "display": "Cocoa Powder",
              "value": 13,
            },
            {
              "display": "Pizza/Pasta Sauce",
              "value": 14,
            },
            {
              "display": "Olives",
              "value": 14,
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
