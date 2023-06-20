import 'package:flutter/material.dart';

class SearchTextTitile extends StatelessWidget {
  final String titile;
  const SearchTextTitile({
    super.key,required this.titile,
  });

  @override
  Widget build(BuildContext context) {
    return     Text(titile,style:const  TextStyle(fontSize: 23,
      fontWeight:FontWeight.bold ),
      );
  }
}