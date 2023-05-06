import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_media_app/shared/util/const.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    List title = [
      {"title": "Person"},
      {"title": "Short Videos"},
      {"title": "Tags"},
      {"title": "Others"},
    ];

    List images = [
      {"image": "https://i.ibb.co/ZmKd66G/medium-shot-smiley-man-stage.jpg"},
      {
        "image":
            "https://i.ibb.co/p2jPz2R/skillful-dancers-performing-dark-room-concert-light-smoke-sensual-couple-performing-artistic-emotion.jpg"
      },
      {
        "image":
            "https://i.ibb.co/7bP17L5/portrait-teenage-girl-taking-selfie.jpg"
      },
      {
        "image":
            "https://i.ibb.co/vwC80MT/happiness-carefree-asian-female-woman-teen-wearing-headphone-hand-hold-coffee-cup-listen-dance-joyfu.jpg"
      },
      {"image": "https://i.ibb.co/jHc3BR9/ballerina-role-black-swan.jpg"},
      {"image": "https://i.ibb.co/K2Q3kJq/IMG-8819-gradient.jpg"},
      {"image": "https://i.ibb.co/D4CQk6w/female-student-playing-violin.jpg"},
    ];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: defaultGradient,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: const [
                        Text("Search photo, video, or friend"),
                        Spacer(),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: defaultPadding,
                  right: defaultPadding,
                  bottom: defaultPadding,
                ),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: title.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Chip(
                            label: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                title[index]["title"],
                              ),
                            ),
                            backgroundColor: index == 0
                                ? Colors.blue.shade700
                                : Colors.grey.shade800,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  child: MasonryGridView.builder(
                    itemCount: images.length,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          images[index]["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
