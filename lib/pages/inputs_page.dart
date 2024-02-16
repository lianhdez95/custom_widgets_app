import 'package:custom_widgets_app/widgets/inputs/input_text_1.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: const [
            InputText1()
          ],
        ),
      ),
    );
  }
}