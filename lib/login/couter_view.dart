import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_case/register/register_view.dart';

import 'login_controller.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
   final controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SafeArea(
          child:Form(
            key: controller.formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    // child: Image.asset(ImageAssest.techMasterCard),
                  ),

                  // user name
                  TextFormField(
                    controller: controller.user1,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Username',
                    ),
                    onChanged: controller.onChangeUsername,
                    validator: controller.validatorUsername,
                  ),

                  const SizedBox(height: 20,),


                  //password
                  TextFormField(
                    controller: controller.user2,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Password',
                    ),
                    onChanged: controller.onChangePassword,
                    validator: controller.validatorPassword,
                  ),

                  const SizedBox(height: 20,),

                  // button login
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        controller.onSubmit();
                      }, child: const Text('Sign In', textAlign: TextAlign.center,),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(const Register(title: 'ĐĂNG KÝ',));;
                      }, child: const Text('Register', textAlign: TextAlign.center,),
                    ),
                  )

                ],

              ),
            ),
          ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}