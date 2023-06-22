import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class CostumButton extends StatelessWidget {

  final IconData icon;
  final String titile;
  final  double iconsize;
  final  double textsize;
  const CostumButton({
    super.key,required this.icon,required this.titile,
    this.iconsize=30,
    this.textsize= 20, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(icon,color: kwhitcolor,size: iconsize,),
        Text(titile,
        style:  TextStyle(
          fontSize: textsize,
          fontWeight: FontWeight.bold
          ),)
      ],
    );
  }
}
