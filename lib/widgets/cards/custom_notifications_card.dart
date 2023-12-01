import 'package:flutter/material.dart';

class CustomNotificationsCard extends StatelessWidget {
  const CustomNotificationsCard({super.key});

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.android,
                color: Colors.black,
                size: width * 0.06,
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Container(
                width: width*0.75,
                padding: EdgeInsets.only(top: height * 0.004),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' Title',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(height: height*0.01, color: Colors.transparent,),
                    Text(
                      'Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.04),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text('$hour:${minute}', style: TextStyle(color: Colors.grey),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
