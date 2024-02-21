import 'package:flutter/material.dart';

import '../../appbars/custom_gradient_appbar.dart';

class MerchantStatsScreen extends StatefulWidget {
  MerchantStatsScreen({super.key});

  @override
  State<MerchantStatsScreen> createState() => _MerchantStatsScreenState();
}

class _MerchantStatsScreenState extends State<MerchantStatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomGradientAppbar(
        title: 'Estadísticas',
        beginAlignment: Alignment.centerLeft,
        endAlignment: Alignment.centerRight,
        beginColor: Colors.cyan.shade800,
        endColor: Colors.cyan.shade400,
      ),
      body: const Placeholder(),
    );
  }
} 