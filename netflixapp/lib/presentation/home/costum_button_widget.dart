import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class CostumButton extends StatelessWidget {

  final IconData icon;
  final String titile;
  const CostumButton({
    super.key,required this.icon,required this.titile
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(icon,color: kwhitcolor,size: 30,),
        Text(titile,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),)
      ],
    );
  }
}
