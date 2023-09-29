import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_gym/favourite_app/favourite_controller.dart';

class ListHome extends StatefulWidget {
  ListHome({super.key});

  @override
  State<ListHome> createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {
  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: controller.gadgetList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (controller.tempGadgetList
                    .contains(controller.gadgetList[index].toString())) {
                  controller.removeFromFavourite(
                      controller.gadgetList[index].toString());
                } else {
                  controller
                      .addToFavourite(controller.gadgetList[index].toString());
                }
                print(controller.tempGadgetList);
              },
              title: Text(controller.gadgetList[index]),
              trailing: Obx(
                () => controller.tempGadgetList
                        .contains(controller.gadgetList[index].toString())
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(Icons.favorite_border),
              ),
            ),
          );
        },
      ),
    );
  }
}
