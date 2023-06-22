
import 'package:flutter/material.dart';

import 'package:netflixapp/core/constents.dart';

import '../../core/colors/colors.dart';
import 'costum_button_widget.dart';

class BackgroundCardWIdget extends StatelessWidget {
  const BackgroundCardWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
                 children: [
                   Container(
                    width: double.infinity,
                    height: 600,
              
                    decoration:const  BoxDecoration(
                      image: DecorationImage(image: NetworkImage(kmainimage),
                      fit: BoxFit.cover
                      )
                    ),
                   ),
                   Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                     child: Padding(
                       padding: const EdgeInsets.only(bottom: 10),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         const  CostumButton(icon: Icons.add, titile: 'Add List',),
                          _PlayButton(),
                          const CostumButton(icon: Icons.info, titile: 'info')
                                        
                        ],
                       ),
                     ),
                   )
                 ],
               );
               
  }
  TextButton _PlayButton() {
    return TextButton.icon(onPressed: (){}, 
                      icon:const Icon(Icons.play_arrow,color: Colors.black,size: 30,),
                       label:const Padding(
                         padding:  EdgeInsets.symmetric(horizontal: 8,),
                         child:   Text('Play',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                         ),
                         ),
                       ),
                      style:const  ButtonStyle
                      (backgroundColor: MaterialStatePropertyAll(kwhitcolor)),
                      );
}}