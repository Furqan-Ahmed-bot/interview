// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mvvm/controllers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final usercontroller = Get.put(UserControllers());
  @override
  void initState() {
    
     usercontroller.homeScreen();
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GetBuilder<UserControllers>(builder: (usercontroller){
            //   return 
            //    usercontroller.isLoading(true)?
            //    CircularProgressIndicator():
            //    ListView.builder(
            //   physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemCount: usercontroller.AllUsers.length,
            //   itemBuilder: (context , index){
            //   return Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.blue,
            //     ),
            //   );

            // });
            // })

            Obx(() => 
             usercontroller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          :
                          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: usercontroller.AllUsers.length,
              itemBuilder: (context , index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Text('${usercontroller.AllUsers[index]['name']} , ${usercontroller.AllUsers[index]['company']['name']}'),
                ),
              );

            }),
            )
           

          ],
        ),
      ),
    );
  }
}