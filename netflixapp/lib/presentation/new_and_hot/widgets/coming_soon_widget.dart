import 'package:flutter/material.dart';

import '../../../core/constents.dart';
import '../../home/costum_button_widget.dart';
import '../../widget/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'JUN',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                '22',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           const    VideoWidget(),
              kHeight,
              Row(
                children: [
                  const Text(
                    "TILL GIRL 2",
                    style: TextStyle(fontSize: 25, letterSpacing: -5),
                  ),
                 const  Spacer(),
                  Row(
                    children: const [
                      CostumButton(
                        icon: Icons.notification_add,
                        iconsize: 20,
                        titile: 'Remain me ',
                        textsize: 12,
                      ),
                      kwidth,
                      kwidth,
                      CostumButton(
                        icon: Icons.info,
                        iconsize: 20,
                        titile: 'ifo',
                        textsize: 12,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              kHeight,
              const Text("Coming on friday"),
              kHeight,
              const Text(
                'Tall girl 2',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              kHeight,
              const Text(
                "landing the lead school musical is a dream\ncome true for jodi until the pressure sends\nher confidence --and her relationship-- into\na talispin",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}

