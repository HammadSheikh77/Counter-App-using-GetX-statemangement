import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement_flutter/favouritemark_controller.dart';

class FavouriteMark extends StatefulWidget {
  const FavouriteMark({super.key});

  @override
  State<FavouriteMark> createState() => _FavouriteMarkState();
}

class _FavouriteMarkState extends State<FavouriteMark> {
  final FavouriteMarkController favmarkcontroller =
      Get.put(FavouriteMarkController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('GetX Favourite Mark')),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: favmarkcontroller.FuritList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black,
              child: ListTile(
                onTap: () {
                  if (favmarkcontroller.tempFuritList.contains(
                      favmarkcontroller.FuritList[index].toString())) {
                    favmarkcontroller.removeToFavourite(
                        favmarkcontroller.FuritList[index].toString());
                  } else {
                    favmarkcontroller.addToFavorite(
                        favmarkcontroller.FuritList[index].toString());
                  }
                },
                title: Text(
                  favmarkcontroller.FuritList[index].toString(),
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Obx(
                  () => Icon(Icons.favorite,
                      color: favmarkcontroller.tempFuritList.contains(
                              favmarkcontroller.FuritList[index].toString())
                          ? Colors.red
                          : Colors.white),
                ),
              ),
            );
          }),
    );
  }
}
