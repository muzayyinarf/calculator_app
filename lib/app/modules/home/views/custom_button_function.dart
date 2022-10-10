import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonFunction extends StatelessWidget {
  const CustomButtonFunction({
    Key? key,
    required this.widthApp,
    this.equal,
    required this.function,
    required this.widget,
  }) : super(key: key);

  final double widthApp;
  final bool? equal;
  final void Function() function;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 7,
      borderRadius: BorderRadius.circular(10),
      color: context.theme.primaryColor,
      child: InkWell(
        onTap: function,
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: (equal != null) ? widthApp * 0.165 * 2.52 : widthApp * 0.165,
          height: widthApp * 0.165,
          child: Center(child: widget),
        ),
      ),
    );
  }
}
