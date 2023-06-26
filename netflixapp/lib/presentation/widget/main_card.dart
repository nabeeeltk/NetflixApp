import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/search/widget/Search_idel.dart';

class MianCard extends StatelessWidget {
  const MianCard({
    super.key, required this.imageUrlFromApi,
  });
final String imageUrlFromApi;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.all(10),
      height: 250,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:  DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage(
                  imageUrlFromApi),
              )),
    );
  }
}