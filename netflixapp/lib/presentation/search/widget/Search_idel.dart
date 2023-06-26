import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/search/widget/titile.dart';

import 'Search_result.dart';
const   imageUrl='https://www.themoviedb.org/t/p/w533_and_h300_bestv2/mfPfFVhpnGp8bG4IUoBJPUs2xKj.jpg';

class SearchIdle extends StatelessWidget {
 const   SearchIdle({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    const   SearchTextTitile(titile: 'Top Searches'),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx,index)=>const TopSearchItem(), 
          separatorBuilder: (ctx,index) =>kHeight,
          itemCount:10 ),
        )
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
     width: screenwidth*0.36,
     height: 60,
      decoration: BoxDecoration(image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage('$imageurl'))
        
      ),
     ),
     kwidth,
  const    Expanded(child: Text('Movie Name', style: TextStyle(
      color: kwhitcolor,
      fontWeight: FontWeight.bold,
      fontSize: 16),
      
      ),
      ),
    const   CircleAvatar(backgroundColor:kwhitcolor,
      radius: 25,
      child: CircleAvatar(backgroundColor: kblackcolor,
      radius: 23,
      child: Icon(Icons.play_arrow),),
      
      )
      
    ],);
  }
}