import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/home/costum_button_widget.dart';
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
                    children: const [
                      BackgroundCardWIdget(),
                      //romove column;
                      MainTitileCard(
                        titleCard: 'Realeaased in the past year',
                      ),
                      kHeight,
                      MainTitileCard(titleCard: 'Treding Now'),
                      kHeight,
                      NumberTitileCard(),
                      kHeight,
                      MainTitileCard(titleCard: 'Tens Dream'),
                      kHeight,
                      MainTitileCard(titleCard: 'South Indian Cinema'),
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

//   TextButton _PlayButton() {
//     return TextButton.icon(
//       onPressed: () {},
//       icon: const Icon(
//         Icons.play_arrow,
//         color: Colors.black,
//         size: 30,
//       ),
//       label: const Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 8,
//         ),
//         child: Text(
//           'Play',
//           style: TextStyle(color: Colors.black, fontSize: 20),
//         ),
//       ),
//       style: const ButtonStyle(
//           backgroundColor: MaterialStatePropertyAll(kwhitcolor)),
//     );
//   }
// }
//}