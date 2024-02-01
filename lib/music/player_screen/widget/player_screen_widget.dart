import 'package:coding_assignment/music/player_screen/provider/player_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayerScreenWidget extends StatelessWidget {
  const PlayerScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF892FE0),
              Color(0xFF892FE0),
              Color(0xFF892FE0),
              Colors.black,
              Color(0xFF892FE0)
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildBackIcon(context),
                    buildMoreIcon(context),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                    height: 300,
                    child: Image.asset(
                      "assets/img/music_img.png",
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  height: 24,
                ),
                buildSongName(),
                const SizedBox(
                  height: 24,
                ),
                buildPlayer(),
              ]),
            ),
          ),
        ));
  }

  Widget buildSongName() {
    return Consumer<PlayerProvider>(
        builder: (BuildContext context, PlayerProvider values, Widget? child) {
      return ListTile(
        title: Text(
          values.initalPlayListName,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        subtitle: Text(
          "Chill your mind",
          style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.w400,
              fontSize: 18),
        ),
        trailing: InkWell(
          onTap: () {
            context.read<PlayerProvider>().updatePlayListName();
          },
          child: Image.asset(
            "assets/img/play_btn.png",
            fit: BoxFit.fill,
          ),
        ),
      );
    });
  }

  Widget buildPlayer() {
    return LinearProgressIndicator(
      backgroundColor: Colors.grey,
      color: Colors.white,
      valueColor: const AlwaysStoppedAnimation<Color>(
        Colors.white,
      ),
      value: 0.3,
      borderRadius: BorderRadius.circular(4),
    );
  }

  Widget buildBackIcon(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop(null);
      },
      child: const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
    );
  }

  Widget buildMoreIcon(BuildContext context) {
    return const Icon(
      Icons.more_horiz,
      color: Colors.white,
    );
  }
}
