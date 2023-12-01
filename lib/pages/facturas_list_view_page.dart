import 'package:custom_widgets_app/widgets/list_tiles/agua_list_tile_pagado.dart';
import 'package:custom_widgets_app/widgets/list_tiles/agua_list_tile_pagar.dart';
import 'package:custom_widgets_app/widgets/list_tiles/electricidad_list_tile_pagado.dart';
import 'package:custom_widgets_app/widgets/list_tiles/electricidad_list_tile_pagar.dart';
import 'package:custom_widgets_app/widgets/list_tiles/onat_list_tile_pagado.dart';
import 'package:custom_widgets_app/widgets/list_tiles/onat_list_tile_pagar.dart';
import 'package:flutter/material.dart';

class FacturasListViewPage extends StatelessWidget {
  const FacturasListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facturas List View'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView(
          children: const [
            OnatListTilePagado(),
            Divider(),
            OnatListTilePagar(),
            Divider(),
            OnatListTilePagar(),
            Divider(),
            OnatListTilePagar(),
            Divider(),
            OnatListTilePagado(),
            Divider(),
            OnatListTilePagar(),
            Divider(),
            OnatListTilePagar(),
            Divider(),
            // ElectricidadListTilePagado(),
            // Divider(),
            // ElectricidadListTilePagar(),
            // Divider(),
            // AguaListTilePagado(),
            // Divider(),
            // AguaListTilePagar(),
            // Divider(),
          ],
        ),
      ),
    );
  }
}