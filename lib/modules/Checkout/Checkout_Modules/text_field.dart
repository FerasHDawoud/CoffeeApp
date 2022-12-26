// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:coffee/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label = "";
  String hint = "";
  double borderRadius;
  double? width;
  double bottomMargin;
  var controller_;

  CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.borderRadius = 35,
    this.width,
    this.bottomMargin = 0,
    this.controller_,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      width: width ?? MediaQuery.of(context).size.width * 0.9,
      height: 70,
      child: TextFormField(
        controller: controller_,
        style: const TextStyle(
          color: APPCOLORS.primaryTextColor,
        ),
        cursorColor: APPCOLORS.primaryTextColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: APPCOLORS.fillColor,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: APPCOLORS.primaryColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: APPCOLORS.primaryColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          labelStyle: const TextStyle(color: APPCOLORS.primaryColor),
          labelText: label,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          hintText: hint,
          contentPadding: const EdgeInsets.fromLTRB(35, 25, 0, 25),
        ),
      ),
    );
  }
}
