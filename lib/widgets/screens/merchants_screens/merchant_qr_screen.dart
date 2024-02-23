import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Mis QR de Comercio',
            style: TextStyle(fontWeight: FontWeight.bold)),
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.cyan.shade800, Colors.cyan.shade400])),
        ),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                // backgroundColor: MaterialStatePropertyAll(Colors.cyan) 
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/icono_ez2.png',
                    width: width * 0.10,
                    height: height * 0.10,
                  ),
                  SizedBox(width: width*0.1,),
                  Text('ENZONA', style: TextStyle(fontSize: height*0.03, color: Colors.black),)
                ],
              ),
            ),
            SizedBox(height: height*0.02,),
            ElevatedButton(
              onPressed: () {},
              
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white) 
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/transfermovil_logo.png',
                    width: width * 0.10,
                    height: height * 0.10,
                  ),
                  SizedBox(width: width*0.1,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Transfermóvil', style: TextStyle(fontSize: height*0.03, color: Colors.black),),
                      Text('Para obtener el qr, consulte con su proveedor', style: TextStyle(fontSize: height*0.013, color: Colors.black),),
                      
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
