import 'package:flutter/material.dart';

class CustomChatBubble2 extends StatelessWidget {
  const CustomChatBubble2({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.blue,
        elevation: 5,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(width * 0.05),
                topRight: Radius.circular(width * 0.05),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(width * 0.05))),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.android,
                color: Colors.white,
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
                          color: Colors.white,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(height: height*0.01, color: Colors.transparent,),
                    Text(
                      'Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.04),
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
