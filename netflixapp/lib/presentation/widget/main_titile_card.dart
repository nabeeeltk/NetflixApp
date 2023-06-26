import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/widget/main_card.dart';

import '../../core/constents.dart';
import '../../domain/base_claint.dart';
import '../../infrastrucutre/api_key.dart';
import '../../model/movie_info.dart';
import 'main_titile.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title,
    required this.apiUrl,
  });
  final String title;
  final String apiUrl;

  @override
  Widget build(BuildContext context) {
    List imageList = [];
    return FutureBuilder(
      future: apicall(apiUrl),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return  Center(
            child: Column(
              children: [
                CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ],
            ),
          );
        }
        if (snapshot.data == null) {
          return Text('No value');
        }

        if (snapshot.hasData) {
          imageList = snapshot.data.results.map((MovieInfoModel movieInfo) {
            if (movieInfo.posterPath == null) {
              return null;
            }
            String imageUrl =
                'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=$apiKey';

            return imageUrl;
          }).toList();
          if(imageList.isEmpty){
              return ListTile(title: Text('No $title'));
            }
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MainTitile(titile: title),
            ),
            kHeight,
            LimitedBox(
              maxHeight: 200,
              child:  ListView.separated(
            //padding: EdgeInsets.all(15),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  MianCard(imageUrlFromApi:imageList[index]),
            itemCount: 10,
            separatorBuilder: (context, index) => kwidth,
          ),
        )
            
          ],
        );
      },
    );
  }
}


