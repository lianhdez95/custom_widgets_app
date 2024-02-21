import 'package:flutter/material.dart';

class CustomGradientAppbar extends StatelessWidget implements PreferredSizeWidget{
  final bool? automticallyImplyLeading;
  final String? title;
  final FontWeight? fontWeight;
  final Color? foregroundColor;
  final Color? beginColor;
  final Color? endColor;
  final Alignment? beginAlignment;
  final Alignment? endAlignment;

  const CustomGradientAppbar(
      {super.key,
      this.automticallyImplyLeading = false,
      this.title = '',
      this.foregroundColor = Colors.white,
      this.beginColor =Colors.blue,
      this.endColor = Colors.blueAccent,
      this.beginAlignment = Alignment.centerLeft,
      this.endAlignment = Alignment.centerRight, 
      this.fontWeight = FontWeight.bold});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title:
          Text(title!, style: TextStyle(fontWeight: fontWeight)),
      foregroundColor: foregroundColor,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: beginAlignment!,
                end: endAlignment!,
                colors: [beginColor!, endColor!])),
      ),
    );
  }
  
}
