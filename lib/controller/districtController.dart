// import 'package:flutter/material.dart';
import 'package:form/model/district.dart';
import 'package:form/services/remote_service.dart';
import 'package:get/get.dart';

class DistrictController extends GetxController {
  var districtList = <DistrictModel>[].obs;
  Future getDistrictList() async {
    try {
      var response = await RemoteService.fetchDistrict();
      if (response != null) {
        districtList.value = response;
      } else {
        Get.snackbar("Message", "No Data Retrived");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getDistrictList();
    super.onInit();
  }
}
