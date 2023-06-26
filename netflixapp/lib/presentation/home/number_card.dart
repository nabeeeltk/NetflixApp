import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCardWidget extends StatelessWidget {
  const NumberCardWidget({super.key, required this.index, required this.imageUrl});
  final int index;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
         const    SizedBox(
              height: 150,width: 40,
            ),
            Container(
              height: 250,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(
                          imageUrl),
                      )),
            ),
          ],
        ),
        Positioned(
          left: 13,
         bottom: -30,
          child: BorderedText(
            strokeWidth: 10,
            strokeColor: Colors.white,
            child: Text(
            '${index+1}',style:const  TextStyle(
              color: Colors.black,
              fontSize: 150,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              decorationColor: Colors.black
              ),
              ),
          ),
            ),
      ],
    );
  }
}