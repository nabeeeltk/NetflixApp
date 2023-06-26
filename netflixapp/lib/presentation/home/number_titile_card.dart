import 'package:flutter/material.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/search/widget/Search_result.dart';
import 'package:netflixapp/presentation/widget/main_titile_card.dart';

import '../../domain/api_end_points.dart';
import '../../domain/base_claint.dart';
import '../../infrastrucutre/api_key.dart';
import '../../model/movie_info.dart';
import '../search/widget/Search_idel.dart';
import 'number_card.dart';

class NumberTitileCard extends StatelessWidget {
  const NumberTitileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List   imagelist=[];
    return FutureBuilder(
      
       future: apicall(ApiEndPoints.toprate),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return  Center(
            child: Column(
              children:const  [
                CircularProgressIndicator(
                  color: Colors.blue,
                ),
                Text('please wait'),
              ],
            ),
          );
        }
        if (snapshot.data == null) {
          return const Text('No data found');
        }
        imagelist = snapshot.data.results.map((MovieInfoModel movieInfo) {
          if (movieInfo.posterPath == null) {
            return null;
          }
          String imageUrl =
              'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=$apiKey';

          return imageUrl;
        }).toList();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const   Padding(
              padding: EdgeInsets.all(8.0),
              child: MainTitleCard(title: 'Top 10 Movies', apiUrl: ApiEndPoints.trendingall),
            ),
            kHeight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    10,
                    (index) => NumberCardWidget(
                          index: index,
                          imageUrl: imagelist[index],
                        )),
              ),
            )
          ],
        );
      },
    );
  }
}