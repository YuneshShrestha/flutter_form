import 'package:form/controller/course_controller.dart';
import 'package:form/controller/districtController.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DistrictController());
    Get.put(CourseController());
  }
}
