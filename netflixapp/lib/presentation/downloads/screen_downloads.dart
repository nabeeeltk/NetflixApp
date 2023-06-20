import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/widget/App_bar_widget.dart';

class ScreenDownlads extends StatelessWidget {
  const ScreenDownlads({super.key});

  @override
  Widget build(BuildContext context) {
    final _widget = [const _SmartDownloads(), Section2(), const Section3()];

    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              titile: 'Downloads',
            )),
        body: ListView.separated(
          padding:const  EdgeInsets.all(10),
            itemBuilder: (ctx, index) => _widget[index],
            separatorBuilder: (ctx, index) => const SizedBox(height: 20),
            itemCount: _widget.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List Imagelist = [
    'https://www.themoviedb.org/t/p/w220_and_h330_face/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/pwf3DGuWB1AptvIzHhlGxDUNnQX.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/kVG8zFFYrpyYLoHChuEeOGAd6Ru.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing  Downloads for you ',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhitcolor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "We Will Download  a Personalised Selection of\n  Movie and showsfor you ,so ther's\n always somthig to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kHeight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              radius: size.width * 0.4,
            ),
            DownloadImageWidget(
              Imagelist: Imagelist[0],
              margin: const EdgeInsets.only(left: 165, bottom: 50),
              size: Size(size.width * 0.4, size.width * 0.58),
              angle: 20,
            ),
            DownloadImageWidget(
              Imagelist: Imagelist[1],
              margin: const EdgeInsets.only(right: 165, bottom: 50),
              size: Size(size.width * 0.4, size.width * 0.58),
              angle: -20,
            ),
            DownloadImageWidget(
              radius: 15,
              Imagelist: Imagelist[2],
              margin: const EdgeInsets.only(bottom: 10),
              size: Size(size.width * 0.5, size.width * 0.67),
            ),
          ]),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kbuttonColoeBlue,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                    color: kwhitcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kbuttonColoeWhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download ',
              style: TextStyle(
                  color: kblackcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kwhitcolor,
        ),
        Text('Smart Downloads',style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    super.key,
    this.angle = 0,
    required this.Imagelist,
    required this.margin,
    required this.size,
    this.radius = 10,
  });
  final double angle;
  final String Imagelist;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Colors.amber,
          image: DecorationImage(
              image: NetworkImage(Imagelist), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
