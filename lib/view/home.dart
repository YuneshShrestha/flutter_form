// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:form/util/app_size.dart';

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
              ],
            )));
  }

  SizedBox gap() {
    return const SizedBox(
      height: 10.0,
    );
  }
}

class CustomTextField extends StatelessWidget {
  String? labelText;
  String? placeHolder;
  CustomTextField(
      {Key? key, required this.labelText, required this.placeHolder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: AppSize.textFieldRadius - AppSize.appPadding),
          child: Text(
            "Enter Your ${labelText!}",
            textScaleFactor: 1.2,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextFormField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              // labelText: 'Full Name',
              hintText: placeHolder!,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSize.textFieldRadius),
                //  borderSide: BorderSide.none,
                //  borderRadius: BorderRadius.circular(20.0)
              )),
        ),
      ],
    );
  }
}
