import 'package:flutter/material.dart';

class OnatListTilePagar extends StatelessWidget {
  const OnatListTilePagar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ListTile(
      leading: Image.asset(
        'assets/images/ic_onat.png',
        height: height * 0.08,
        width: height * 0.08,
      ),
      title: Text('Id. Cliente'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nombre del cliente'),
          Text('0.00 CUP')
        
        ],
      ),
      trailing: ElevatedButton(
        onPressed: (){}, 
        child: Text('PAGAR'),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      )
    );
  }
}
