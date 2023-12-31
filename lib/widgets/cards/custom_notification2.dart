import 'dart:ui';

import 'package:flutter/material.dart';

class CustomNotificationsCard2 extends StatelessWidget {
  const CustomNotificationsCard2({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final hour = DateTime.now().hour;
    final minute = DateTime.now().toUtc().minute;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(width * 0.025),
                topRight: Radius.circular(width * 0.025),
                bottomLeft: Radius.circular(width * 0.025),
                bottomRight: Radius.circular(width * 0.025))),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    'Facebook',
                    style: TextStyle(color: Colors.blue, fontFamily: 'Roboto'),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: width * 0.01,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text('Hace 1 hora', style: TextStyle(color: Colors.grey, fontSize: width*0.03),)
                ],
              ),
              SizedBox(
                    height: width * 0.02,
                  ),
              Container(
                padding: EdgeInsets.only(top: height * 0.004),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    CircleAvatar(backgroundColor: Colors.blue,),
                    SizedBox(
                    width: width * 0.02,
                  ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            
                            Text(
                              ' Title',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Divider(
                          height: height * 0.01,
                          color: Colors.transparent,
                        ),
                        Text(
                          'Texto de prueba Texto de prueba  ',
                          style: TextStyle(
                              color: Colors.black, fontSize: width * 0.03),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
