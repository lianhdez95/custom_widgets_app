import 'package:custom_widgets_app/pages/cards_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widgets App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardsPage()),
            );
          },
          child: Text('Go to Card Page'),
        ),
      ),
    );
  }
}