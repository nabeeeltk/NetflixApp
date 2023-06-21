import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/widget/main_card.dart';

import '../../core/constents.dart';
import 'main_titile.dart';

class MainTitileCard extends StatelessWidget {

  final String titleCard;
  const MainTitileCard({
    super.key,
    required this.titleCard
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
            MainTitile(titile: titleCard),
    kHeight,
    LimitedBox(
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: 
          List.generate(10, (index) => const MianCard ())
        
      ),
    )
        ],
      );
  }
}


