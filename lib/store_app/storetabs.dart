import 'package:e_commerce/store_app/detail_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/nav.dart';

class StoreAppTab extends StatefulWidget {
  const StoreAppTab({super.key});

  @override
  State<StoreAppTab> createState() => _StoreAppTabState();
}

class _StoreAppTabState extends State<StoreAppTab>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 150,
        ),
        child: Column(
          children: [
            NewWidget(tabController: tabController),
            const Divider(),
            Expanded(
              child: TabBarView(controller: tabController, children: const [
                DetailScreen(),
                DetailScreen(),
                DetailScreen(),
                DetailScreen(),
                DetailScreen(),
              ]),
            ),
          ],
        ),
      )),
    );
  }
}
