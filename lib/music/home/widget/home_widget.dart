import 'package:flutter/material.dart';

import '../../recent_tab/widget/recent_tab_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: buildBody(context)),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.black,
            Color(0xFF892FE0),
            Colors.black,
            Color(0xFF892FE0)
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle(),
            const SizedBox(
              height: 16,
            ),
            buildSubTitle(),
            const SizedBox(
              height: 16,
            ),
            buildSearchBar(),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height - 160,
                child: buildTab()),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return const Text(
      "Welcome back!",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32),
    );
  }

  Widget buildSubTitle() {
    return Text(
      "What do you feel like today?",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.grey[400], fontWeight: FontWeight.w600, fontSize: 14),
    );
  }

  Widget buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.grey[800],
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            size: 36,
            color: Colors.grey[400],
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintText: 'Search song, playslist, artist...',
          hintStyle: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.w600,
              fontSize: 16)),
    );
  }

  Widget buildTab() {
    return SizedBox(
      height: double.infinity,
      child: DefaultTabController(
          length: 5,
          child: Column(
            children: [
              Container(
                height: 42,
                padding: const EdgeInsets.all(4.0),
                child: TabBar(
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                  unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                  tabs: [
                    buildTabText("Recent"),
                    buildTabText("Top 50"),
                    buildTabText("Chill"),
                    buildTabText("R&B"),
                    buildTabText("R&Festival"),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const RecentTabWidget(),
                    buildText(),
                    buildText(),
                    buildText(),
                    buildText()
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget buildTabText(String tabName) {
    return Tab(
        child: Text(
      tabName,
    ));
  }

  Widget buildText() {
    return Text(
      "",
    );
  }
}
