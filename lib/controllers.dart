// ignore_for_file: non_constant_identifier_names, avoid_print, unnecessary_brace_in_string_interps

import 'package:get/get.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mvvm/home.dart';

import 'simple.dart';

class UserControllers extends GetxController{
   var isLoading = false.obs;
   List AllUsers = [].obs;

  homeScreen () async{

   isLoading(true);

    final uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
    http.Response response = await http.get(uri);
    var resData = json.decode(response.body.toString());
    if(resData.length > 0){
      AllUsers = resData;
      isLoading(false);
      Get.to(SimpleData());

    print("Data is ${AllUsers}");
 
    }


    
    

    


  }



}