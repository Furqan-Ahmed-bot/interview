import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm/controllers.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
     final usercontroller = Get.put(UserControllers());
       @override
  void initState() {
    
     usercontroller.homeScreen();
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(()=>
          ElevatedButton(onPressed: (){
          
            }, child:
             usercontroller.isLoading.value
          ? CircularProgressIndicator()
          :
             Text('Login')),
          )
        ],
      ),
    );
  }
}