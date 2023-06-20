import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Text('Downlaods',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
),
       
       const Spacer(),
        const Icon(Icons.cast,color: Colors.white,size: 30,),
       const  SizedBox(width: 10,),
        Container(
          width: 40,
          height:40,
          color: Colors.blue),
         const  SizedBox(width: 10,)

      ],
    );
  }
}