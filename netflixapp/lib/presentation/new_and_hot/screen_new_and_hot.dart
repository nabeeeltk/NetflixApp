import 'package:flutter/material.dart';
import 'package:netflixapp/core/constents.dart';
import 'package:netflixapp/presentation/widget/video_widget.dart';

import '../home/costum_button_widget.dart';
import 'widgets/coming_soon_widget.dart';
import 'widgets/evary_one_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(width: 40, height: 40, color: Colors.blue),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.black,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              isScrollable: true,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(40),
              ),
              tabs: const [
                Tab(
                  text: "🍿 Coming Soon ",
                ),
                Tab(text: " 👀 Everyone Watching"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _BuildComingSoon(),
            _BuildEveryOnesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _BuildComingSoon() {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
    );
  }

  Widget _BuildEveryOnesWatching() {
    return ListView.builder(
      itemCount: 15,
      itemBuilder:(BuildContext context, index) => 
   const  EveryOneWatchingWidget()
    );
  }
}

