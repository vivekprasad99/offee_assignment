import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../r&b_playlist/widget/rb_playlist_widget.dart';
import '../data/model/recent_music_model.dart';

class RecentTabWidget extends StatelessWidget {
  const RecentTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 240,
          child: buildPlayList(),
        ),
        const Text(
          "Your favourites",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(
          height: 16,
        ),
        buildFavouriteList(),
      ],
    );
  }

  Widget buildPlayList() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const RbPlayListWidget()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 160,
                  child: Image.asset(
                    "${recentMusicList[index].musicImg}",
                  )),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "${recentMusicList[index].title}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "${recentMusicList[index].subTitle}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 16,
        );
      },
      itemCount: recentMusicList.length,
    );
  }

  Widget buildFavouriteList() {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset("${favouritesList[index].musicImg}"),
            title: Text(
              "${favouritesList[index].title}",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            subtitle: Text(
              "${favouritesList[index].subTitle}",
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemCount: favouritesList.length,
      ),
    );
  }
}
