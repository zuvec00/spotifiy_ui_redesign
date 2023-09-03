import 'package:flutter/material.dart';


class NeuBox extends StatelessWidget {
  final child;
  final double height;
  final double width;

  NeuBox(@required this.child,this.height,this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:height,
      width:width,
        
        padding: EdgeInsets.all(12),
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          color: Colors.green[800],
          boxShadow:[
            BoxShadow(
            color:Colors.green.shade900,
            offset:Offset(4,4),
            blurRadius:15,
            spreadRadius: 1,
          ),
          BoxShadow(
                    color: Colors.green.shade700,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
          ]
        ),
        child:Center(child:child),
        

      );
  }
}