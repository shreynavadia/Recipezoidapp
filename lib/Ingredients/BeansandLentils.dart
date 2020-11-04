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
      home: BandL(title: appTitle),
    );
  }
}

class BandL extends StatelessWidget {
  final String title;

  BandL({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Center(child: MultiSelect(
          titleText: 'Beans and Lentils',
          autovalidate: false,
          validator: (value) {
            if (value == null) {
              return 'Please select one or more option(s)';
            }
          },
          errorText: 'Please select one or more option(s)',
          dataSource: [
            {
              "display": "Kidney Beans",
              "value": 1,
            },
            {
              "display": "Chickpea",
              "value": 2,
            },
            {
              "display": "Split Chana Dal",
              "value": 3,
            },
            {
              "display": "Soybean",
              "value": 4,
            },
            {
              "display": "Kala Chana",
              "value": 5,
            },
            {
              "display": "Split Urad Dal",
              "value": 6,
            },
            {
              "display": "Split Pea",
              "value": 7,

            },
            {
              "display": "Whole Black Urad Dal",
              "value": 8,
            },
            {
              "display": "French",
              "value": 9,
            },
            {
              "display": "Black eyed beans ",
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
