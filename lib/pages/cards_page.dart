import 'package:custom_widgets_app/widgets/cards/destinatarios_bm_card.dart';
import 'package:custom_widgets_app/widgets/cards/destinatarios_bpa_card.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Page'),
      ),

      body: Container(
        padding: EdgeInsets.only(top: height*0.01),
        alignment: Alignment.center,
        child: ListView(
          children: [
            const DestinatariosBMCard(),
            SizedBox(height:height*0.01),
            const DestinatariosBPACard()
          ],
        ),
      ),
    );
  }
}