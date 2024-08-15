import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';

class CheckboxButton extends StatefulWidget {
  const CheckboxButton({super.key});

  @override
  State<CheckboxButton> createState() => _CheckboxButtonState();
}

class _CheckboxButtonState extends State<CheckboxButton> {
  // List<String> checkboxValues = ['Cb1', 'Cb2', 'Cb3', 'Cb4', 'Cb5'];
  // List<String> checkboxValues = List.generate(30, (i)=>'CB ${i+1}');
  List<bool> selectedCheckbox = List.generate(50, (_)=>false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Checkbox'),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (c, i) => CheckboxListTile(
            value: selectedCheckbox[i],
            onChanged: (bool? value) => setState(() {
              selectedCheckbox[i] = value!;
            }),
            title: Text('Check ${i+1}'),
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}
