
import 'package:flutter/material.dart';

import 'package:netflixapp/core/constents.dart';

import '../../core/colors/colors.dart';
import '../../domain/api_end_points.dart';
import '../../domain/base_claint.dart';
import '../../infrastrucutre/api_key.dart';
import '../../model/movie_info.dart';
import 'costum_button_widget.dart';
class BackgroundWidget extends StatefulWidget {
  const BackgroundWidget({super.key});

  @override
  State<BackgroundWidget> createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  @override
  void initState() {
    super.initState();
    setimage();
  }

  setimage() async {
    dynamic result = await apicall(ApiEndPoints.moviepopular);
    setState(() {
      if (result.results.isNotEmpty) {
        MovieInfoModel movieInfo = result.results[2];
        imageUrl =
            "https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=$apiKey";
      }
    });
  }
  String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return  Stack(
                 children: [
                   Container(
                    width: double.infinity,
                    height: 600,
              
                    decoration:  BoxDecoration(
                      image: DecorationImage(image: NetworkImage('$imageUrl'),
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