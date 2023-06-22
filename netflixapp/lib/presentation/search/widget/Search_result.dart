import 'package:flutter/cupertino.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/search/widget/titile.dart';

const imageurl ='https://www.themoviedb.org/t/p/w220_and_h330_face/hQUT2B0QVV17pYMHyLzdNGVdrBF.jpg';
class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
   const SearchTextTitile(titile: 'Movies & TV'),
      kHeight,
      Expanded(

        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
          children: List.generate(20, (index) {
            return   const MainCardWidget();

          }),))
    ],);
  }
}
class MainCardWidget extends StatelessWidget {
  const MainCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:const  DecorationImage(
          image: NetworkImage(imageurl),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}