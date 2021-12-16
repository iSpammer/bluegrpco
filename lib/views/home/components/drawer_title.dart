import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerTile extends StatelessWidget {
  Color? bgColor = Colors.transparent;
  IconData? icon;
  final String title;
  Function? function;
  DrawerTile(  {this.icon,this.bgColor,  required this.title, this.function});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if(function != null){
          function!();
        }
      },
      title:  Text("${this.title}"),
      leading: Container(color: bgColor== null ? Colors.transparent : bgColor!, child: icon == null ? Container(width: 24) : Icon(icon!) ),
    );
  }
}
