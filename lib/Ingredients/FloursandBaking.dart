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
      home: FandB(title: appTitle),
    );
  }
}

class FandB extends StatelessWidget {
  final String title;

  FandB({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: MultiSelect(
          titleText: 'Flours and Baking',
          autovalidate: false,
          validator: (value) {
            if (value == null) {
              return 'Please select one or more option(s)';
            }
          },
          errorText: 'Please select one or more option(s)',
          dataSource: [
            {
              "display": " All Purpose Flour",
              "value": 1,
            },
            {
              "display": "White Rice",
              "value": 2,
            },
            {
              "display": "Brown Rice",
              "value": 3,
            },
            {
              "display": "Pasta",
              "value": 4,
            },
            {
              "display": "Spaghetti",
              "value": 5,
            },
            {
              "display": "Rice Flour",
              "value": 6,
            },
            {
              "display": "Gram Flour",
              "value": 7,

            },
            {
              "display": "Bread",
              "value": 8,
            },
            {
              "display": "Semolina",
              "value": 9,
            },
            {
              "display": "Wheat Flour",
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
