import 'package:flutter/material.dart';

import '../../player_screen/widget/player_screen_widget.dart';
import '../../recent_tab/data/model/recent_music_model.dart';

class RbPlayListWidget extends StatelessWidget {
  const RbPlayListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF892FE0), Color(0xFF892FE0),Color(0xFF892FE0),Colors.black,Color(0xFF892FE0)],
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height* 0.35,
                child: Image.asset(
                  "assets/img/music_img.png",
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildBackIcon(context),
                        buildMoreIcon(context),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ListTile(
                    title: const Text(
                      "R&B PlayList",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    subtitle: Text(
                      "Chill your mind",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                    trailing: Image.asset(
                      "assets/img/play_btn.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ],
          ),
          buildSongWidget(context)
        ],
      ),
    );
  }

  Widget buildBackIcon(BuildContext context) {
      return InkWell(
        onTap: () {
          Navigator.of(context).pop(null);
          },
        child: const Icon(Icons.arrow_back_ios,color: Colors.white,),
      );
  }

  Widget buildMoreIcon(BuildContext context) {
    return const Icon(Icons.more_horiz,color: Colors.white,);
  }

  Widget buildSongWidget(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PlayerScreenWidget()));
            },
            child: ListTile(
              leading: Image.asset("${rbPlayList[index].musicImg}"),
              title: Text(
                "${rbPlayList[index].title}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              subtitle: Text(
                "${rbPlayList[index].subTitle}",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
              trailing: Text(
                "${rbPlayList[index].timeDuration}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemCount: rbPlayList.length,
      ),
    );
  }
}
