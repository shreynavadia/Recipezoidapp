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
      home: Fruit(title: appTitle),
    );
  }
}

class Fruit extends StatelessWidget {
  final String title;

  Fruit({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: MultiSelect(
          titleText: 'Fruits',
          autovalidate: false,
          validator: (value) {
            if (value == null) {
              return 'Please select one or more option(s)';
            }
          },
          errorText: 'Please select one or more option(s)',
          dataSource: [
            {
              "display": "Berries",
              "value": 1,
            },
            {
              "display": "Banana",
              "value": 2,
            },
            {
              "display": "Apple",
              "value": 3,
            },
            {
              "display": "Orange",
              "value": 4,
            },
            {
              "display": "Pomegranate",
              "value": 5,
            },
            {
              "display": "Watermelon",
              "value": 6,
            },
            {
              "display": "Dry Fruits",
              "value": 7,

            },
            {
              "display": "Kiwi",
              "value": 8,
            },
            {
              "display": "Mango",
              "value": 9,
            },
            {
              "display": "Guava",
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
