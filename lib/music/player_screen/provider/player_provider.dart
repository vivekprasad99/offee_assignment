import 'package:flutter/material.dart';

class PlayerProvider extends ChangeNotifier
{

  String _initalPlayListName = "initial PlayList";
  String get initalPlayListName => _initalPlayListName;

  void updatePlayListName() {
    _initalPlayListName = "after PlayList";
    notifyListeners();
  }
}