import 'package:flutter/material.dart';

class OnatListTilePagado extends StatelessWidget {
  const OnatListTilePagado({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ListTile(
      leading: Opacity(
        opacity: 0.5,
        child: Image.asset(
          'assets/images/ic_onat.png',
          height: height * 0.08,
          width: height * 0.08,
        ),
      ),
      title: Text('Id. Cliente'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nombre del cliente'),
          Text('0.00 CUP')
        
        ],
      ),
      trailing: Image.asset(
          'assets/images/ic_pagado.png',
          height: height * 0.1,
          width: height * 0.1,
        ),
    );
  }
}
