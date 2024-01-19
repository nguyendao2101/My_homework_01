// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:test_case/couter/couter_controller.dart';

// class Register extends StatelessWidget {
//   const Register({super.key, required this.title});
//   final String title;

//   @override
//   Widget build(BuildContext context) {

//   late TextEditingController user1 = TextEditingController();
//   late TextEditingController user2 = TextEditingController();
//   late TextEditingController user3 = TextEditingController();


//   final formKey = GlobalKey<FormState>();

//   final controller = Get.put(LoginController());
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(title),
//       ),
//       body: SafeArea(
//         child: Form(
//           key: formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(10.0),
//                 ),
//                                   TextFormField(
//                     controller: controller.user1,
//                     obscureText: false,
//                     decoration: InputDecoration(
//                       enabledBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.black),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey.shade400),
//                       ),
//                       fillColor: Colors.grey.shade200,
//                       filled: true,
//                       hintText: 'Username',
//                     ),
//                     onChanged: controller.onChangeUsername,
//                     validator: controller.validatorUsername,
//                   ),

//                   const SizedBox(height: 20,),
//                                     TextFormField(
//                     controller: controller.user2,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       enabledBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.black),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey.shade400),
//                       ),
//                       fillColor: Colors.grey.shade200,
//                       filled: true,
//                       hintText: 'Password',
//                     ),
//                     onChanged: controller.onChangePassword,
//                     validator: controller.validatorPassword,
//                   ),

//                                     const SizedBox(height: 20,),
//                                     TextFormField(
//                     controller: controller.user3,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       enabledBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.black),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey.shade400),
//                       ),
//                       fillColor: Colors.grey.shade200,
//                       filled: true,
//                       hintText: 'Entry Your Password',
//                     ),
//                     onChanged: controller.onChangeConfirmPassword,
//                     validator: controller.validatorConfirmPassword,
//                   ),
//               ]),),),
//     ),
//     );
//   }
// }