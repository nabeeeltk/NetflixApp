import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/widget/main_titile.dart';


import '../../domain/api_end_points.dart';
import '../widget/main_titile_card.dart';
import 'backgroun_card_widget.dart';
import 'number_titile_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollnotifier,
      builder: (BuildContext context, index, _) {
        return Padding(
            padding: const EdgeInsets.all(10),
            child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollnotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollnotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const  [
                      BackgroundWidget(),
                   MainTitleCard(
                      title: 'New Releases',
                      apiUrl: ApiEndPoints.trendingall,
                    ),
                    MainTitleCard(
                      title: 'Trending Now',
                      apiUrl: ApiEndPoints.moviepopular,
                    ),
                    NumberTitileCard(),
                    MainTitleCard(
                      title: 'Popular Shows ',
                      apiUrl: ApiEndPoints.tvpopular,
                    ),
                    MainTitleCard(
                      title: 'Upcoming',
                      apiUrl: ApiEndPoints.upcoming,
                    ),
                     
                      // MainTitile(
                      //   titleCard: 'Realeaased in the past year', apiUrl: '',
                      // ),
                      // kHeight,
                      // MainTitileCard(titleCard: 'Treding Now', apiUrl:'',),
                      // kHeight,
                      // NumberTitileCard(),
                      // kHeight,
                      // MainTitileCard(titleCard: 'Tens Dream', apiUrl: '',),
                      // kHeight,
                      // MainTitileCard(titleCard: 'South Indian Cinema', apiUrl: '',),
                    ],
                  ),
                  scrollnotifier.value == true
                      ? AnimatedContainer(
                        duration:const  Duration(microseconds: 500),
                          width: double.infinity,
                          height: 90,
                          color: Colors.black.withOpacity(0.3),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Image(
                                    image: NetworkImage(knetflixlogo),
                                    width: 50,
                                    height: 50,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 40,
                                      height: 40,
                                      color: Colors.blue),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'TV Shows',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Movies',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Category',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
                            ],
                          ),
                        )
                      : kHeight
                ],
              ),
            ));
      },
    ));
  }
}
