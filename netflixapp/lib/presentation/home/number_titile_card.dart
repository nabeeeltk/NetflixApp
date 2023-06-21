import 'package:flutter/material.dart';
import 'package:netflixapp/core/constents.dart';

import '../widget/main_titile.dart';
import 'number_card.dart';

class NumberTitileCard extends StatelessWidget {
  const NumberTitileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
            MainTitile(titile: 'Top 10 TV showes India today'),
    kHeight,
    LimitedBox(
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: 
          List.generate(10, (index) =>  NumberCardWidget (index: index,))
        
      ),
    )
        ],
      );
  }
}
