import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

class FriendsStory extends StatelessWidget {
  const FriendsStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List images = [
      {
        "image": "https://i.ibb.co/D4CQk6w/female-student-playing-violin.jpg",
        "name": "Ney",
      },
      {
        "image":
            "https://i.ibb.co/hCLNtF2/medium-shot-beautiful-woman-party.jpg",
        "name": "Mizuki",
      },
      {
        "image":
            "https://i.ibb.co/9y1DW9K/good-moments-happy-dark-skinned-school-age-boy-holding-palette-painting-cactus-easel-looking-head-tu.jpg",
        "name": "Kaho",
      },
    ];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: images.length,
        itemBuilder: (context, index) {
          int dashes;
          if (index == 0) {
            dashes = 7;
          } else if (index == 1) {
            dashes = 2;
          } else {
            dashes = 4;
          }
          return Row(
            children: [
              if (index == 0)
                const SizedBox(
                  width: 15.0,
                ),
              if (index == 0)
                Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            DashedCircle(
                              dashes: 0,
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                  "https://i.ibb.co/jHc3BR9/ballerina-role-black-swan.jpg",
                                ),
                              ),
                            ),
                            Positioned(
                                top: 45,
                                left: 45,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.indigo.shade400,
                                  child: const Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text("Your Story"),
                      ],
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
              Column(
                children: [
                  DashedCircle(
                    color: Colors.grey,
                    dashes: dashes,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                          images[index]["image"],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(images[index]["name"]),
                ],
              ),
              const SizedBox(
                width: 10.0,
              ),
            ],
          );
        },
      ),
    );
  }
}
