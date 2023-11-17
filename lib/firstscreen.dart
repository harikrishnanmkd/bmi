import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController height = TextEditingController();
  final TextEditingController weight = TextEditingController();
  double result=0.0;
  void bmicalculate() {
    double Height = double.parse(height.text) / 100;
    print(Height);
    double Weight = double.parse(weight.text);
    print(Weight);
    double Heightsquare = Height * Height;
    result=Weight/Heightsquare;
    setState(() {
      result=result;
    });
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'BMI Calculator',
          ),
          centerTitle: true,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: height,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.trending_up), labelText: 'height in cm'),
          ),
          TextField(
            controller: weight,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.menu),
              labelText: 'Weight in kg',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                bmicalculate();
              },
              style: ElevatedButton.styleFrom(primary: Colors.pink),
              child: Text('Calculate')),
          Text(result.toStringAsFixed(2))
        ]));
  }
}
