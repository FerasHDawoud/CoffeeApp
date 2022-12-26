import 'package:coffee/modules/Checkout/Checkout_Modules/text_field.dart';
import 'package:coffee/utils/app_colors.dart';
import 'package:coffee/utils/background_image.dart';
import 'package:coffee/utils/custom_button.dart';
import 'package:coffee/utils/text_templet.dart';
import 'package:coffee/utils/top_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgrounImage(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopContainer(
              titele: "Checkout",
              containerHight: 0.21,
              leftBottonText: "< Back",
              onPressedLeftText: () {
                Navigator.pop(context);
              },
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.74,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      TextTemplet(
                        text_: "DELIVARY ADDRESS",
                        fontColor_: APPCOLORS.primaryTextColor,
                        size_: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  CustomTextField(
                    label: "ADDRESS",
                    hint: "Enter Delivary Address",
                    borderRadius: 20,
                  ),
                  Row(
                    children: const [
                      TextTemplet(
                        text_: "PAYMENT METHOD",
                        fontColor_: APPCOLORS.primaryTextColor,
                        size_: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  CustomTextField(
                    label: "CREDIT CARD",
                    hint: "Enter Credit Card Number",
                    borderRadius: 20,
                  ),
                  CustomTextField(
                    label: "NET BANKING",
                    hint: "Enter Net Banking",
                    borderRadius: 20,
                  ),
                  CustomTextField(
                    label: "PalPay",
                    hint: "Enter Palpay Number",
                    borderRadius: 20,
                  ),
                  CustomButton(
                    text: "Pay",
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
