import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflixapp/presentation/widget/App_bar_widget.dart';

class ScreenDownlads extends StatelessWidget {
  const ScreenDownlads({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget()),
      body:  Text(" screen downlaods"),);
  }
}