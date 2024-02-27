import 'package:custom_widgets_app/widgets/navigation_bars/custom_navigation_bar.dart';
import 'package:custom_widgets_app/widgets/screens/merchants_screens/merchant_stats_screen.dart';
import 'package:custom_widgets_app/widgets/screens/merchants_screens/merchants_list_screen.dart';
import 'package:custom_widgets_app/widgets/screens/merchants_screens/new_calculator_screen.dart';
import 'package:custom_widgets_app/widgets/screens/merchants_screens/payments_screen.dart';
import 'package:custom_widgets_app/widgets/screens/merchants_screens/merchant_qr_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MerchantHomeScreen extends StatefulWidget {
  const MerchantHomeScreen({super.key});

  @override
  State<MerchantHomeScreen> createState() => _MerchantHomeScreenState();
}

class _MerchantHomeScreenState extends State<MerchantHomeScreen> {
  final List<Map<String, dynamic>> _screens = [
    {'screen': const MerchantsListScreen()},
    {'screen': const PaymentsScreen()},
    {'screen': const NewCalculatorScreen()},
    {'screen': const ProfileScreen()},
    {'screen': MerchantStatsScreen()},
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
        
        body: _screens[_selectedScreenIndex]['screen'],
        bottomNavigationBar: CustomButtonNavigationBar(
          index: _selectedScreenIndex,
          onIndexSelected: _selectScreen,
        ));
  }
}
