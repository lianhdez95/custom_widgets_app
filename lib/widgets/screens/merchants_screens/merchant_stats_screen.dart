// ignore_for_file: prefer_const_constructors

import 'package:custom_widgets_app/widgets/charts/sf_cartesian_chart.dart';
import 'package:flutter/material.dart';

import '../../appbars/custom_gradient_appbar.dart';

class MerchantStatsScreen extends StatefulWidget {
  const MerchantStatsScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: const SfCartesianChartCustom(),
      ),
    );
  }
} 