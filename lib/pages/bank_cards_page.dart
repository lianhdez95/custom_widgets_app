import 'package:custom_widgets_app/widgets/cards/bandec_card.dart';
import 'package:custom_widgets_app/widgets/cards/bicsa_card.dart';
import 'package:custom_widgets_app/widgets/cards/bm_card.dart';
import 'package:custom_widgets_app/widgets/cards/bpa_card.dart';
import 'package:flutter/material.dart';

class BankCardsPage extends StatefulWidget {
  const BankCardsPage({super.key});

  @override
  State<BankCardsPage> createState() => _BankCardsPageState();
}

class _BankCardsPageState extends State<BankCardsPage> {
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Cards'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(

          children: const [
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