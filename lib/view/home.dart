// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:form/util/app_size.dart';
import 'package:form/widgets/dropdown.dart';
import 'package:form/widgets/text_field.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                CustomDropDown(
                  labelText: "District",
                  placeHolder: "Select District",
                )
              ],
            )));
  }

  SizedBox gap() {
    return const SizedBox(
      height: 10.0,
    );
  }
}
