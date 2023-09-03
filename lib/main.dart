import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext build){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(textTheme:TextTheme(bodyText2: GoogleFonts.lato(color:Colors.grey[900]))) ,
    home:HomePage(),
  );
}
}