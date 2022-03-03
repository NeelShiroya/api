import 'package:api/screen/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final homePageController = Get.put<HomePageController>(HomePageController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: homePageController,
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Users'),
              centerTitle: true,
            ),
            body: controller.isLoaded
                ? ListView.builder(
                    itemCount: homePageController.userList.length,
                    itemBuilder: (context, index) {
                      var users = homePageController.userList;
                      return Card(
                        child: Column(
                          children: [Text('Name: ${users[index].name}')],
                        ),
                      );
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ));
      },
    );
  }
}
