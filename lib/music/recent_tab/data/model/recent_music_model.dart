class RecentMusicModel {
  String? musicImg;
  String? title;
  String? subTitle;
  String? timeDuration;

  RecentMusicModel(
      {this.musicImg, this.title, this.subTitle, this.timeDuration});
}

List<RecentMusicModel> recentMusicList = [
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "R&B PlayList",
      subTitle: "Chill your Mind"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "Daily Mix 2",
      subTitle: "Made for you"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "Bye Bye",
      subTitle: "Made for you"),
];

List<RecentMusicModel> favouritesList = [
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "Bye Bye",
      subTitle: "Marshmello, Juice WRLD"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "I Like You",
      subTitle: "Post Malone, Doja Cat"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "Fountains",
      subTitle: "Drake, Tems"),
];

List<RecentMusicModel> rbPlayList = [
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "You right",
      subTitle: "Doja Cat, The Weeknd",
      timeDuration: "3:40"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "2 AM",
      subTitle: "Arizona Zervas",
      timeDuration: "3:40"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "Baddest",
      subTitle: "2 Chainz, Chris Brown",
      timeDuration: "3:40"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "True Love",
      subTitle: "Kanye West",
      timeDuration: "3:40"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "Bye Bye",
      subTitle: "Marshmello, Juice WRLD",
      timeDuration: "3:40"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "Hands on you",
      subTitle: "Austin George",
      timeDuration: "3:40"),
  RecentMusicModel(
      musicImg: "assets/img/music_img.png",
      title: "Baddest",
      subTitle: "2 Chainz, Chris Brown",
      timeDuration: "3:40"),
];
