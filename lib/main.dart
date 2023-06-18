import 'package:caeth/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CALottery Eth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold,color: Colors.white),
          titleLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: Colors.black),
          bodyMedium: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w300 ),
          displaySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.red),

        ),
      ),
      home: Stack(
        alignment: Alignment.topLeft,
        children: [
          const HomeScreen(),
          Container(
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Image.asset("images/logo.png",height: 140,width: 140,fit: BoxFit.cover,color: Colors.black,),
          ),
          // Container(
          //     margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          //     child: Image.asset("images/logo.png",height: 100,width: 100,fit: BoxFit.cover,)
          // ),
        ],
      ),
    );
  }
}


