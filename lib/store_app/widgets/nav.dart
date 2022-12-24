import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: SvgPicture.asset('svg/logo.svg', height: 18),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
                isScrollable: true,
                labelPadding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                controller: tabController,
                labelColor: Colors.black,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5, color: Colors.orange),
                  insets: EdgeInsets.symmetric(horizontal: 18.0),
                ),
                // CircularIndicator(color: Colors.orange, radius: 2),

                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(
                    text: 'Collection',
                  ),
                  Tab(
                    text: 'Men',
                  ),
                  Tab(
                    text: 'Women',
                  ),
                  Tab(
                    text: 'About',
                  ),
                  Tab(
                    text: 'Contact',
                  ),
                ]),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SvgPicture.asset('svg/icon-cart.svg', height: 16),
            ),
            InkWell(
              hoverColor: Colors.transparent,
              onTap: () {},
              child: CircleAvatar(
                child: Image.asset(
                  'image/image-avatar.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
