import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/search/widget/titile.dart';
  final imageurl ='https://www.themoviedb.org/t/p/w220_and_h330_face/hQUT2B0QVV17pYMHyLzdNGVdrBF.jpg';
class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SearchTextTitile(titile: 'Movies & TV'),
      kHeight,
      Expanded(

        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
          children: List.generate(20, (index) {
            return   MainCard();

          }),))
    ],);
  }
}
class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageurl),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}