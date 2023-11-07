import 'package:custom_widgets_app/widgets/cards/bandec_card_widget.dart';
import 'package:custom_widgets_app/widgets/cards/bicsa_card_widget.dart';
import 'package:custom_widgets_app/widgets/cards/bm_card_widget.dart';
import 'package:custom_widgets_app/widgets/cards/bpa_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(

          children: [
            BMCardWidget(),
            BPACardWidget(),
            BandecCardWidget(),
            BicsaCardWidget()
          ],
        ),
      ),
    );
  }
}