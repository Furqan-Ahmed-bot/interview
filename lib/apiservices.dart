// // ignore_for_file: unused_local_variable
// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import 'package:get/get.dart'; 
// import 'package:mvvm/controllers.dart';

// class ApiServices{

//   homeScreen () async{
//     final userControllers = Get.put(UserControllers());
//     userControllers.isLoading(true);

//     final uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
//     http.Response response = await http.get(uri);
//     var resData = json.decode(response.body.toString());
//     if(resData.length > 0){
//       userControllers.getUsersData(resData);
//      userControllers.isLoading(false);
//     }


    
    

    


//   }

  
// }