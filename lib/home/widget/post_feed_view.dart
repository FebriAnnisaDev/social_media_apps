import 'package:flutter/material.dart';
import 'package:social_media_app/shared/util/const.dart';

class PostFeed extends StatelessWidget {
  const PostFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/hCLNtF2/medium-shot-beautiful-woman-party.jpg",
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Febri Annisa",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[900],
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "32 mins ago",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade400,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text("Follow"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://i.ibb.co/K2Q3kJq/IMG-8819-gradient.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Chip(
                      elevation: 1,
                      label: Image.network(
                        "https://i.ibb.co/sFXnwyt/emoji-transparent-2018-2.png",
                        width: 15,
                        fit: BoxFit.cover,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      "2.2k",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.message_outlined,
                      size: 15.0,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "200",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      size: 15.0,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "191k",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.send_outlined,
                      size: 15.0,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "97",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5.0,
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Text(
                  "Outstanding performance today!",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et sem ex. Donec purus eros, consectetur adipiscing elit. Morbi et sem ex. Donec purus eros, consectetur adipiscing elit. Morbi et sem ex. Donec purus eros, sollicitudin a faucibus vehicula, lacinia ac massa. Quisque semper nisi mauris, et pharetra felis cursus ut. Etiam porta, nisi ut aliquam luctus.",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
