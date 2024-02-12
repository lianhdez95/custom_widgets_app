
import 'package:custom_widgets_app/widgets/cards/custom_notification2.dart';
import 'package:custom_widgets_app/widgets/cards/custom_notifications_card.dart';
import 'package:custom_widgets_app/widgets/cards/destinatarios_bandec_card.dart';
import 'package:custom_widgets_app/widgets/cards/destinatarios_bicsa_card.dart';
import 'package:custom_widgets_app/widgets/cards/destinatarios_bm_card.dart';
import 'package:custom_widgets_app/widgets/cards/destinatarios_bpa_card.dart';
import 'package:custom_widgets_app/widgets/cards/id_gas_card.dart';
import 'package:custom_widgets_app/widgets/cards/id_agua_card.dart';
import 'package:custom_widgets_app/widgets/cards/id_correo_card.dart';
import 'package:custom_widgets_app/widgets/cards/id_electricidad_card.dart';
import 'package:custom_widgets_app/widgets/cards/id_etecsa_card.dart';
import 'package:custom_widgets_app/widgets/cards/id_onat_card.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),

      body: Container(
        padding: EdgeInsets.only(top: height*0.01),
        alignment: Alignment.center,
        child: ListView(
          children: [
            const DestinatariosBMCard(),
            SizedBox(height:height*0.01),
            const DestinatariosBPACard(),
            SizedBox(height:height*0.01),
            const DestinatariosBandecCard(),
            SizedBox(height:height*0.01),
            const DestinatariosBicsaCard(),
            SizedBox(height:height*0.01),
            const IdElectricidadCard(),
            SizedBox(height:height*0.01),
            const IdAguaCard(),
            SizedBox(height:height*0.01),
            const IdGasCard(),
            SizedBox(height:height*0.01),
            const IdOnatCard(),
            SizedBox(height:height*0.01),
            const IdEtecsaCard(),
            SizedBox(height:height*0.01),
            const IdCorreoCard(),
            SizedBox(height:height*0.01),
            const CustomNotificationsCard(),
            SizedBox(height:height*0.01),
            const CustomNotificationsCard2(),

          ],
        ),
      ),
    );
  }
}