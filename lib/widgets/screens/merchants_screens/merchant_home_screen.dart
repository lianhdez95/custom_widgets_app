import 'package:custom_widgets_app/widgets/navigation_bars/custom_navigation_bar.dart';
import 'package:custom_widgets_app/widgets/screens/merchants_screens/calculator_screen.dart';
import 'package:custom_widgets_app/widgets/screens/merchants_screens/payments_screen.dart';
import 'package:custom_widgets_app/widgets/screens/merchants_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MerchantHomeScreen extends StatefulWidget {
  const MerchantHomeScreen({super.key});

  @override
  State<MerchantHomeScreen> createState() => _MerchantHomeScreenState();
}

class _MerchantHomeScreenState extends State<MerchantHomeScreen> {
  final List<Map<String, dynamic>> _screens = [
    {'screen': null, 'title': ''},
    {'screen': const PaymentsScreen(), 'title': 'Pagos'},
    {'screen': const CalculatorScreen(), 'title': 'Calculadora'},
    {'screen': const ProfileScreen(), 'title': 'QR COmercio'},
  ];

  int _selectedScreenIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Row(
        //     children: [
        //       CircleAvatar(),
        //       Gap(10),
        //       Text(_screens[_selectedScreenIndex]['title'],
        //           style: TextStyle(fontWeight: FontWeight.bold)),
        //     ],
        //   ),

        //   foregroundColor: Colors.white,
        //   flexibleSpace: Container(
        //     decoration: BoxDecoration(
        //         gradient: LinearGradient(
        //             begin: Alignment.centerLeft,
        //             end: Alignment.centerRight,
        //             colors: [Colors.cyan.shade800, Colors.cyan.shade400])),
        //   ),
        // ),
        body: _screens[_selectedScreenIndex]['screen'],
        bottomNavigationBar: CustomButtonNavigationBar(
          index: _selectedScreenIndex,
          onIndexSelected: _selectScreen,
        ));
  }
}
