import 'dart:convert';

import 'package:custom_widgets_app/entities/merchant_tpv_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class MerchantsListScreen extends StatefulWidget {
  const MerchantsListScreen({super.key});

  @override
  State<MerchantsListScreen> createState() => _MerchantsListScreenState();
}

class _MerchantsListScreenState extends State<MerchantsListScreen> {
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
    return Center(
        child: FutureBuilder(
      future: cargarJson(),
      builder: (context, AsyncSnapshot<List<MerchantTpvModel>> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          merchants = snapshot.data;
          return Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.cyan.shade800, Colors.cyan.shade400])),
              child: Container(
                  padding: EdgeInsets.only(top: height * 0.1),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: height * 0.05,
                          child: Icon(
                            Icons.person,
                            size: width * 0.16,
                          ),
                        ),
                        Gap(width * 0.04),
                        Container(
                          // color: Colors.amber,
                          width: width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Nombre de usuario',
                                style: TextStyle(
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Gap(width * 0.02),
                              Text(
                                '@username',
                                style: TextStyle(
                                    fontSize: height * 0.02,
                                    color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Gap(width * 0.03,),
                        IconButton(
                          icon: const Icon(Icons.power_settings_new),
                          color: Colors.red,
                          highlightColor: Colors.white,
                          iconSize: width * 0.1,
                          onPressed: () {
                            //TODO:
                          },
                        )
                      ],
                    ),
                  )),
            ),
            Container(
                height: height * 0.65,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(width * 0.1),
                        topRight: Radius.circular(width * 0.1))),
                child: ListView.builder(
                  itemCount: merchants!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.shopify),
                      ),
                      title: Text(merchants![index].alias),
                      subtitle: Text(merchants![index].name),
                      trailing: merchants![index].approved == true
                          ? const Icon(Icons.check)
                          : const Icon(Icons.cancel),
                    );
                  },
                )),
          ]);
        }
      },
    ));
  }
}
