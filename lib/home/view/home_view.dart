import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_media_app/discover/view/discover_view.dart';
import 'package:social_media_app/shared/util/const.dart';
import '../widget/friends_story_view.dart';
import '../widget/home_appbar_view.dart';
import '../widget/post_feed_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: SizedBox(
        height: 120,
        child: Stack(
          children: [
            Positioned(
              top: 25,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade900,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.blueGrey[900],
                          ),
                          const SizedBox(
                            height: 1.0,
                          ),
                          const Icon(
                            Icons.compass_calibration_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.blueGrey[900],
                          ),
                          const SizedBox(
                            height: 1.0,
                          ),
                          const Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.blueGrey[900],
                          ),
                          const SizedBox(
                            height: 1.0,
                          ),
                          const Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: MediaQuery.of(context).size.width * 0.5 - 30,
              child: InkWell(
                onTap: () {
                  Get.to(const DiscoverView());
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.indigo.shade400,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: defaultGradient,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: const [
                  SizedBox(
                    height: 35.0,
                  ),
                  HomeAppBar(),
                  FriendsStory(),
                  SizedBox(
                    height: 20.0,
                  ),
                  PostFeed(),
                ],
              ),
              Positioned(
                top: 230,
                left: MediaQuery.of(context).size.width * 0.5 - 15,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.shade900,
                  child: const Icon(
                    Icons.arrow_upward,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
