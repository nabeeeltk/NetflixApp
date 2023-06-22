
import 'package:flutter/widgets.dart';

class MainTitile extends StatelessWidget {
  final String titile;
  const MainTitile ({super.key ,required this.titile});

  @override
  Widget build(BuildContext context) {
    return  Text(titile,style:const  TextStyle(fontSize: 23,
      fontWeight:FontWeight.bold ),
      );

  }
}