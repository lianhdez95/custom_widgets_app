
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
        surfaceTintColor: Colors.white,
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
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo3.png',
                    height: height * 0.03,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text(
                        'ENZONA',
                        style: TextStyle(color: Colors.blue, fontFamily: 'Roboto', fontSize: width * 0.03),
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
                      Text(
                        'Hace un momento', //Tiempo transcurrido desde que se recibió la notificación
                        style:
                            TextStyle(color: Colors.grey, fontFamily: 'Roboto', fontSize: width * 0.03),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: height * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle_notifications_rounded,
                          color: Colors.blue,
                          size: width * 0.06,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          ' Title',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(
                      height: height * 0.01,
                      color: Colors.transparent,
                    ),
                    Text(
                      'Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba Texto de prueba',
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.04),
                    ),
                    Divider(
                      height: height * 0.01,
                      color: Colors.transparent,
                    ),
                    const AttachmentWidget(
                        fileName: 'Documento',
                        fileSize: '2.2 mb',
                        fileType: '.doc'),
                    Divider(
                      height: height * 0.01,
                      color: Colors.transparent,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: () {}, child: const Text('ACEPTAR', style: TextStyle(color: Colors.blue),)),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        TextButton(onPressed: () {}, child: const Text('CANCELAR', style: TextStyle(color: Colors.blue))),
                      ],
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                          onPressed: () {},
                          splashColor: Colors.blue[300],
                          splashRadius: width * 0.05,
                          highlightColor: Colors.blue[100],
                        )),
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

class AttachmentWidget extends StatelessWidget {
  final String fileName;
  final String fileSize;
  final String fileType;

  const AttachmentWidget({
    Key? key,
    required this.fileName,
    required this.fileSize,
    required this.fileType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 249, 255),
          borderRadius: BorderRadiusDirectional.circular(width * 0.02)),
      padding: EdgeInsets.all(width * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.attach_file,
                color: Colors.blue,
              ),
              SizedBox(width: width * 0.01),
              Text(
                fileName,
                style: TextStyle(
                  fontSize: width * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: width * 0.01),
              Text(
                fileType,
                style: TextStyle(
                  fontSize: width * 0.035,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: width * 0.02),
              Text(
                fileSize,
                style: TextStyle(
                  fontSize: width * 0.035,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.download,
              color: Colors.blue,
            ),
            splashColor: Colors.blue[600],
            splashRadius: width * 0.02,
          )
        ],
      ),
    );
  }
}
