import 'package:flutter/material.dart';

class InputText1 extends StatelessWidget {
  const InputText1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ),
      )
    );
  }
}