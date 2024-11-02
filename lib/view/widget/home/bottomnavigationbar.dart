import 'package:deliveryapp/controller/auth/home_screen_controller.dart';
import 'package:deliveryapp/view/widget/home/custtombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomnavigationbar extends StatelessWidget {
  const Bottomnavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<HomeScreenControllerImp>(builder: (controller)=>BottomAppBar(
              shape:const CircularNotchedRectangle(),
              notchMargin: 10,
              child: Row(children: [
                ...List.generate(
                    controller.listpage.length,
                    ((index) {
                    
                  return Expanded(
                    child: Custtombuttonappbar(
                            textbar: controller.titleappbar[index]['title'],
                            iconData: controller.titleappbar[index]['icon'],
                            active: controller.currentpage ==index? true:false,
                            onPressed: () {
                              controller.chagePage(index);
                            },
                          ),
                  );
                    } ))
              ]),
            ),);
  }
}