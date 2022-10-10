import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class CustomButton extends GetView<HomeController> {
  const CustomButton({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    final widthApp = Get.width;
    return Material(
      elevation: 7,
      borderRadius: BorderRadius.circular(10),
      color: context.theme.backgroundColor,
      child: InkWell(
        onTap: () {
          controller.changeText(value);
        },
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: widthApp * 0.165,
          height: widthApp * 0.165,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
