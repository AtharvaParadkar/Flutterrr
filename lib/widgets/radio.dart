import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  // List<String> checkboxValues = ['Op1', 'Op2', 'Op3', 'Op4', 'Op5'];
  List<String> radioValues = List.generate(30, (i)=>'Radio ${i+1}');
  String? selectedRadio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Radio'),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView.builder(
          itemCount: radioValues.length,
          itemBuilder: (c, i) => RadioListTile<String>(
            activeColor: Colors.amberAccent,
            title: Text(radioValues[i]),
            value: radioValues[i],
            groupValue: selectedRadio,
            onChanged: (String? value) => setState(() {
              selectedRadio = value;
            }),
          ),
        ),
      ),
    );
  }
}
