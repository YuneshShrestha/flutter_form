import 'package:flutter/material.dart';
import 'package:form/controller/districtController.dart';
import 'package:form/util/app_size.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  String? labelText;
  String? placeHolder;
  CustomDropDown({Key? key, required this.labelText, required this.placeHolder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var districtController = Get.find<DistrictController>();
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
        Obx(
          () => DropdownButtonFormField(
            hint: Text("$placeHolder"),
            decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
            items: districtController.districtList
                .map((e) => DropdownMenuItem(
                      child: Text(e.titleEn.toString()),
                      value: e.title.toString(),
                    ))
                .toList(),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
