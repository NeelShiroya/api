import 'package:api/ap/users.dart';
import 'package:api/model/users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  List<User> userList = [];
  bool isLoaded = false;

  @override
  void onInit() {
    super.onInit();
    getUserData();
  }

  getUserData() async {
    await fetchUserData().then((value) => userList = value!);
    if (userList.isNotEmpty) {
      isLoaded = true;
    }
    debugPrint('Condition ${userList.isEmpty}');
    update();
  }
}
