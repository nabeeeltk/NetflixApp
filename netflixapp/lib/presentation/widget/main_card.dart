import 'package:flutter/material.dart';

class MianCard extends StatelessWidget {
  const MianCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 250,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w220_and_h330_face/tDynwDj3pvexrEQ8wb0uy8EdcGQ.jpg'),
              )),
    );
  }
}