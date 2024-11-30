import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monkmaze_practical/utility/constant_file.dart';
import 'package:monkmaze_practical/view/friends_list_model.dart';

class FriendsTabController extends GetxController {
  var menuItems = [
    FriendsTabModel(title: "Friend Request", img: ImgName.MY_FRIENDS_IMG),
    FriendsTabModel(title: "My Friends", img: ImgName.FRIENDS_REQUEST_IMG),
    FriendsTabModel(title: "Send Request", img: ImgName.SEND_REQUEST_IMG)
  ].obs;
  var icons = [Icons.person_add, Icons.people, Icons.send].obs;
}
