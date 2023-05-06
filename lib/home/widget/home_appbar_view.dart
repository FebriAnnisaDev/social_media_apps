import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/discover/view/discover_view.dart';

import '../../shared/util/const.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          const Text(
            "Simstagram.",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Get.to(const DiscoverView());
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: const Icon(
              Icons.notification_add_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
