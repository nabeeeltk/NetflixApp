import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/nf3Vlxm3C9U1aKUUQHmKFZmxPSc.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 0,
          child: CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 25,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                size: 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}


