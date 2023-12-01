import 'package:flutter/material.dart';

class CustomChatBubble1 extends StatelessWidget {
  const CustomChatBubble1({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      
      child: CustomPaint(
        painter: ChatBubble(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.android,
                color: Colors.white,
                size: width * 0.07,
              ),
              SizedBox(width: width * 0.05),
              Container(
                width: width * 0.7,
                child: Container(
                  padding: EdgeInsets.only(top: height*0.004),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Colors.transparent,
                        height: height*0.01,
                      ),
                      Text(
                        'Texto de prueba Texto de prueba Texto de prueba Texto de prueba  Texto de prueba Texto de prueba Texto de prueba Texto de prueba, uahdunayhdn audhaius duhasia hsduaius hdiua',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.04,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatBubble extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.blue;
    var path = Path();
    path.lineTo(size.width - 20.0, 0);
    path.arcToPoint(
      Offset(size.width - 10.0, 10.0),
      radius: Radius.circular(10),
    );
    path.lineTo(size.width - 10.0, size.height - 10.0);
    path.arcToPoint(
      Offset(size.width - 20.0, size.height),
      radius: Radius.circular(10),
    );
    path.lineTo(0.0, size.height);
    path.cubicTo(-10.0, size.height, 0, size.height - 10.0, 0,
        size.height - 18.0); // Aquí creas el pico
    path.lineTo(0, 10.0);
    path.arcToPoint(
      Offset(10.0, 0),
      radius: Radius.circular(10),
    );
    path.lineTo(size.width - 20.0, 0);

    canvas.drawShadow(path, Colors.black.withOpacity(0.8), 4, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
