import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/downloads/screen_downloads.dart';
import 'package:netflixapp/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflixapp/presentation/home/screen_home.dart';
import 'package:netflixapp/presentation/main_page/widget/bottom_nav.dart';
import 'package:netflixapp/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflixapp/presentation/search/screen_search.dart';

// ignore: camel_case_types
class screenMainPage extends StatelessWidget {
  screenMainPage({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLuagh(),
    const ScreenSearch(),
     ScreenDownlads(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:const  BottomNavigationWidget(),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: indexchangenotifier,
              builder: (context, index, child) {
          return _pages[index];
              },
            ),
        )
        );
  }
}
