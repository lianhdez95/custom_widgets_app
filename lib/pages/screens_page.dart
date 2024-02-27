import 'dart:ui';

import 'package:custom_widgets_app/widgets/screens/merchants_screens/merchant_home_screen.dart';
import 'package:flutter/material.dart';

class ScreensPage extends StatelessWidget {
  const ScreensPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screens'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.mobile_screen_share, color: Colors.red,
                ),
                title: const Text('Merchant Home Screen'),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MerchantHomeScreen()),
                  );
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}