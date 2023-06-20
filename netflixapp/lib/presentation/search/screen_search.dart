import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/search/widget/Search_idel.dart';


class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CupertinoSearchTextField(
           backgroundColor: Colors.grey.withOpacity(0.3),
          prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.white,
                ),
                style: TextStyle(color: Colors.grey),
          ),
          kHeight,
        SearchIdle(),
        kHeight,
        ],
      )
      ),);
  }
}