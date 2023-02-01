// ignore_for_file: unused_local_variable, unnecessary_overrides

import 'dart:ffi';

import 'package:app/model/UserModel.dart';
import 'package:app/repository/UserRepository.dart';
import 'package:get/get.dart';

class UserViewModel extends GetxController {
  var productList = <UserModel>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getAllProducts() async {
    var user = await UserRepository.fetchAllUsers();
    if (user != null) {
      productList.value = user;
      isLoading.value = false;
    }
  }
}
