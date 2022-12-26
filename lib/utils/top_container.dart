// ignore_for_file: file_names, prefer_typing_uninitialized_variables, must_be_immutable
import 'package:coffee/utils/text_templet.dart';
import 'package:flutter/material.dart';
import 'APP_COLORS.dart';

class TopContainer extends StatelessWidget {
  final String titele;
  final String leftBottonText;
  final String rightBottonText;
  final double containerHight;
  var onPressedLeftText;
  var onPressedRighitText;
  TopContainer(
      {super.key,
      this.titele = "",
      this.leftBottonText = "",
      this.rightBottonText = "",
      this.onPressedLeftText,
      this.onPressedRighitText,
      this.containerHight = 0.17});

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: mediaQueryHeight * containerHight,
      decoration: const BoxDecoration(
        color: APPCOLORS.primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(26.0),
          bottomLeft: Radius.circular(26.0),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextButton(
                    onPressed: onPressedLeftText,
                    child: TextTemplet(
                      text_: leftBottonText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: onPressedRighitText,
                    child: TextTemplet(
                      text_: rightBottonText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: mediaQueryHeight * 0.035,
              ),
              Container(
                margin: EdgeInsets.only(bottom: mediaQueryHeight * 0.008),
                height: mediaQueryHeight * 0.08,
                width: MediaQuery.of(context).size.width * 0.18,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/coffee main logo.png"),
                  ),
                ),
              ),
              TextTemplet(text_: titele, size_: 26),
            ],
          ),
        ],
      ),
    );
  }
}
