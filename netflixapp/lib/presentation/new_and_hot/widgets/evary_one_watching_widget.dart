import 'package:flutter/material.dart';

import '../../../core/constents.dart';
import '../../home/costum_button_widget.dart';
import '../../widget/video_widget.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  const EveryOneWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          'This hit sitcom followers the marrey missadventures of six 20- somthing pals as they nagative the pitfalls of work life and love in 1990s Manhatten',
          style: TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        const VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CostumButton(
              icon: Icons.share,
              iconsize: 25,
              titile: 'Share ',
              textsize: 12,
            ),
            kwidth20,
            CostumButton(
              icon: Icons.add,
              iconsize: 20,
              titile: 'My list',
              textsize: 12,
            ),
            kwidth20,
            CostumButton(
              icon: Icons.play_arrow,
              iconsize: 20,
              titile: 'PLay ',
              textsize: 12,
            ),
            kwidth20
          ],
        )
      ],
    );
  }
}
