import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/fast_laugh/widget/video_list_item.dart';


class ScreenFastLuagh extends StatelessWidget {
  const ScreenFastLuagh({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:SafeArea(child: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(20, (index) {
        return   VideoLisItem(index:index ,);
      })

    )),);
  }
}