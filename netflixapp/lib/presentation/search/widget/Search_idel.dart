

import 'package:flutter/material.dart';
import 'package:netflixapp/core/constents.dart';
const   imageUrl='https://www.themoviedb.org/t/p/w533_and_h300_bestv2/mfPfFVhpnGp8bG4IUoBJPUs2xKj.jpg';

class SearchIdle extends StatelessWidget {
   SearchIdle({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const     Text('Top Searches',style: TextStyle(fontSize: 23,
        fontWeight:FontWeight.bold ),
        ),
        kHeight,
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (ctx,index)=>const TopSearchItem(), 
        separatorBuilder: (ctx,index) =>kHeight,
        itemCount:10 )
    ],
    );
  }
}

class TopSearchItem extends StatelessWidget {
  const TopSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
final screenwidth=MediaQuery.of(context).size.width;
    return Row(children: [
     Container(
    //  width: screenwidth=0.3,
      decoration: BoxDecoration(image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(imageUrl))
        
      ),
     )
    ],);
  }
}