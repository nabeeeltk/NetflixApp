import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/search/widget/Search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.3),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
             Icons.clear,
              color: Colors.white,
            ),
            style:const TextStyle(color: Colors.grey),
          ),
          kHeight,
          // Expanded(child: SearchIdle()),
          const  Expanded(child: SearchResult()),
          kHeight,
        ],
      )),
    );
  }
}
