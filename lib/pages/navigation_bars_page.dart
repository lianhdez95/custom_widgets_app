import 'package:custom_widgets_app/pages/my_home_page.dart';
import 'package:custom_widgets_app/widgets/navigation_bars/navigation_bar_1.dart';
import 'package:custom_widgets_app/widgets/navigation_bars/navigation_bar_2.dart';
import 'package:flutter/material.dart';

class NavigationBarsPage extends StatelessWidget {
  const NavigationBarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Bars'),
        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.navigation, color: Colors.red,
                ),
                title: const Text('Navigation Bar 1'),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NavigationBar1()),
                  );
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.navigation, color: Colors.red,
                ),
                title: const Text('Navigation Bar 2'),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NavigationBar2()),
                  );
                },
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
