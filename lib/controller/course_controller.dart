import 'package:form/model/course.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  // var check_value = false.obs;
  var myCourseList = [].obs;
  var courseList = [
    Course(courseName: "C Programming", isSelected: true),
    Course(courseName: "Web Development", isSelected: false),
  ].obs;
  void addMyCourseList(String data) {
    myCourseList.add(data);
  }

  void removeMyCourseList(String data) {
    myCourseList.remove(data);
  }
}
