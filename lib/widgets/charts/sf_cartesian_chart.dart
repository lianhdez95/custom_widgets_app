import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SfCartesianChartCustom extends StatefulWidget {
  const SfCartesianChartCustom({super.key});

  @override
  State<SfCartesianChartCustom> createState() => _SfCartesianChartCustomState();
}

class _SfCartesianChartCustomState extends State<SfCartesianChartCustom> {
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfCartesianChart(
            // Initialize category axis
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Half yearly sales analysis'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: _tooltipBehavior,
            series: <LineSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                // Bind data source
                dataSource: <SalesData>[
                  SalesData('Jan', 35),
                  SalesData('Feb', 28),
                  SalesData('Mar', 34),
                  SalesData('Apr', 32),
                  SalesData('May', 40),
                  SalesData('Jun', 35),
                  SalesData('Jul', 20),
                  SalesData('Aug', 62),
                  SalesData('Sep', 42),
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
              LineSeries<SalesData, String>(
                // Bind data source
                dataSource: <SalesData>[
                  SalesData('Jan', 20),
                  SalesData('Feb', 12),
                  SalesData('Mar', 34),
                  SalesData('Apr', 2),
                  SalesData('May', 60),
                  SalesData('Jun', 35),
                  SalesData('Jul', 15),
                  SalesData('Aug', 80),
                  SalesData('Sep', 45),
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
            ]));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
