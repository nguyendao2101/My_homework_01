import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_case/screen2.dart';

class LoginController extends GetxController{
  late TextEditingController user1 = TextEditingController();
  late TextEditingController user2 = TextEditingController();
  late TextEditingController user3 = TextEditingController();



  final formKey = GlobalKey<FormState>();


  void onChangeUsername(username){
    formKey.currentState?.validate();
  }

    bool containsSpecialCharacters(String text) {
    final allowedSpecialCharacters = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
    return allowedSpecialCharacters.hasMatch(text);
  }

    bool containsUppercaseLetter(String text) {
    return RegExp(r'[A-Z]').hasMatch(text);
  }

  bool containsLowercaseLetter(String text) {
    return RegExp(r'[a-z]').hasMatch(text);
  }

  bool containsDigit(String text) {
    return RegExp(r'\d').hasMatch(text);
  }

    String? validatorUsername(username){
      if((username??'').isEmpty){
        return 'Username không được để trống';
      } else if((username??'').length < 6){
        return 'Username không được nhỏ hơn 6 ký tự';
      }else if (containsSpecialCharacters(username!)) {
        return 'Mật khẩu khong chứa ký tự đặc biệt';
      }else{
        return null;
        }
      }

    void onChangePassword(password){
        formKey.currentState?.validate();
      }

    String? validatorPassword(password){
      if((password??'').isEmpty){
        return 'Username không được để trống';
    } else if((password??'').length < 6){
        return 'Username không được nhỏ hơn 6 ký tự';
    }else if (password.contains(' ')) {
      return 'Password không được chứa khoảng trắng';
    } else if (!containsUppercaseLetter(password)) {
      return 'Password cần chứa ít nhất 1 ký tự viết hoa';
    } else if (!containsLowercaseLetter(password)) {
      return 'Password cần chứa ít nhất 1 ký tự viết thường';
    } else if (!containsDigit(password)) {
      return 'Password cần chứa ít nhất 1 chữ số';
    } else if (!containsSpecialCharacters(password)) {
      return 'Password cần chứa ít nhất 1 ký tự đặc biệt';
    } else{
      return null;
    }
    }

    // void onChangeConfirmPassword(confirmPassword){
    //   formKey.currentState?.validate();
    // }
    // String? validatorConfirmPassword(confirmPassword){
    //   if (confirmPassword != user2.value) {
    //   return 'Password nhập lại không khớp';
    // } else {
    //   return null;
    // }
    //   }

    void onSubmit(){
  
      if((user1.text != 'nguyendao')||(user2.text != 'Nguyendao21@' )){
        Get.dialog(
          Dialog(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text('Thông tin đăng nhập không đúng, vui lòng nhập lại',textAlign: TextAlign.center,),
                const SizedBox(height: 15,),
                TextButton(onPressed: (){
                  Get.back();
                }, child: const Text('Close'),),
              ],
            ),
          ),
        ),);
       }
      if((user1.text == 'nguyendao')&&(user2.text == 'Nguyendao21@' )){
        Get.to(const Sceen3());
      }
   }
}