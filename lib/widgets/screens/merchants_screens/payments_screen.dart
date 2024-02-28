import 'dart:convert';

import 'package:custom_widgets_app/entities/merchant_tpv_model.dart';
import 'package:custom_widgets_app/widgets/appbars/custom_gradient_appbar.dart';
import 'package:custom_widgets_app/widgets/cards/custom_notifications_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  List<MerchantTpvModel>? merchants;
  late Future<String>? json;
  Map<String, dynamic> jsonParser = {};
  String? error = "";

  @override
  void initState() {
    super.initState();
  }

  Future<List<MerchantTpvModel>> cargarJson() async {
    var str = await rootBundle.loadString('assets/models/merchants.json');
    jsonParser = jsonDecode(str);

    return MerchantTpvModelList.fromJson(jsonParser).merchant;
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: CustomGradientAppbar(
          title: 'Últimas operaciones',
          beginAlignment: Alignment.centerLeft,
          endAlignment: Alignment.centerRight,
          beginColor: Colors.cyan.shade800,
          endColor: Colors.cyan.shade400,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              CustomNotificationsCard(),
              CustomNotificationsCard(),
              CustomNotificationsCard(),
              CustomNotificationsCard(),
              CustomNotificationsCard(),
              CustomNotificationsCard(),
            ]
          ),
        ) 
        // FutureBuilder(
        //   future: cargarJson(),
        //   builder: (context, AsyncSnapshot<List<MerchantTpvModel>> snapshot) {
        //     if (!snapshot.hasData) {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     } else if (snapshot.hasError) {
        //       return Text('Error: ${snapshot.error}');
        //     } else {
        //       merchants = snapshot.data;
        //       return Container(
        //           height: height * 0.75,
        //           decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.only(
        //                   topLeft: Radius.circular(width * 0.1),
        //                   topRight: Radius.circular(width * 0.1))),
        //           child: ListView.builder(
        //             itemCount: merchants!.length,
        //             itemBuilder: (context, index) {
        //               return ListTile(
        //                 leading: const CircleAvatar(
        //                   child: Icon(Icons.person),
        //                 ),
        //                 title: Text(merchants![index].alias),
        //                 subtitle: Text(merchants![index].name),
        //                 trailing: merchants![index].approved == true
        //                     ? const Icon(Icons.check)
        //                     : const Icon(Icons.cancel),
        //               );
        //             },
        //           ));
        //     }
        //   },
        // )
      );
  }
}
