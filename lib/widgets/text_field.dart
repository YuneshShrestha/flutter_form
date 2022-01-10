import 'package:flutter/material.dart';
import 'package:form/util/app_size.dart';

// ignore: must_be_immutable
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
            fillColor: Colors.grey.shade200,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.textFieldRadius),
              //  borderSide: BorderSide.none,
              //  borderRadius: BorderRadius.circular(20.0)
            ),
          ),
        ),
      ],
    );
  }
}
