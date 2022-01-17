// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:form/controller/course_controller.dart';
import 'package:form/util/app_size.dart';
import 'package:form/widgets/dropdown.dart';
import 'package:form/widgets/text_field.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var courseController = Get.find<CourseController>();
    print(courseController.myCourseList);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(AppSize.appPadding),
            child: Column(
              children: [
                CustomTextField(
                  labelText: "Name",
                  placeHolder: "Eg. Yunesh Shrestha",
                ),
                gap(),
                CustomTextField(
                  labelText: "Mobile",
                  placeHolder: "Eg. 9800000000",
                ),
                gap(),
                // CustomDropDown(
                //   labelText: "District",
                //   placeHolder: "Select District",
                // ),
                ListView.builder(
                  itemCount: courseController.courseList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      value: courseController.courseList[index].isSelected,
                      onChanged: (value) {
                        print(value);
                        courseController.courseList[index].isSelected = value;
                        if (courseController.courseList[index].isSelected ==
                            true) {
                          courseController.addMyCourseList(courseController
                              .courseList[index].courseName
                              .toString());
                        } else {
                          courseController.removeMyCourseList(courseController
                              .courseList[index].courseName
                              .toString());
                        }
                        setState(() {});
                      },
                      title: Text(courseController.courseList[index].courseName
                          .toString()),
                    );
                  },
                ),
              ],
            )));
  }

  SizedBox gap() {
    return const SizedBox(
      height: 10.0,
    );
  }
}
