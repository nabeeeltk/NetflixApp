import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/presentation/home/screen_home.dart';
import 'package:netflixapp/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: BackgroundColor,
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme:const  TextTheme(bodyText2: TextStyle(color: Colors.white),
        
        )
      ),
      home:screenMainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
