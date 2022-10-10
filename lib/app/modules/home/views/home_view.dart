import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../../config/app_theme.dart';
import '../controllers/home_controller.dart';
import 'custom_button.dart';
import 'custom_button_function.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    final heightApp = Get.height -
        context.mediaQueryPadding.top -
        context.mediaQueryPadding.bottom;
    final widthApp = Get.width;

    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: widthApp,
              height: heightApp * 0.4,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Obx(() => AutoSizeText(
                              controller.text.value,
                              maxLines: null,
                              maxFontSize: 80,
                              minFontSize: 40,
                              style: TextStyle(
                                  fontSize: 80,
                                  color: context.theme.colorScheme.secondary),
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Obx(() => AutoSizeText(
                              controller.hasil.value,
                              maxFontSize: 80,
                              minFontSize: 50,
                              maxLines: null,
                              style: const TextStyle(fontSize: 90),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ]),
            ),
            Container(
              width: widthApp,
              height: heightApp * 0.6,
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CustomButton(text: "^", value: "^"),
                      const CustomButton(text: "⌫", value: "Clear"),
                      const CustomButton(text: "AC", value: "AllClear"),
                      CustomButtonFunction(
                        widthApp: widthApp,
                        function: () => Get.changeTheme(
                            Get.isDarkMode ? AppTheme.light : AppTheme.dark),
                        widget: const Icon(
                          Icons.color_lens_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CustomButton(text: "(", value: "("),
                      CustomButton(text: ")", value: ")"),
                      CustomButton(text: "%", value: "%"),
                      CustomButton(text: ":", value: "/"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CustomButton(text: "7", value: "7"),
                      CustomButton(text: "8", value: "8"),
                      CustomButton(text: "9", value: "9"),
                      CustomButton(text: "×", value: "*"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CustomButton(text: "4", value: "4"),
                      CustomButton(text: "5", value: "5"),
                      CustomButton(text: "6", value: "6"),
                      CustomButton(text: "-", value: "-"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CustomButton(text: "1", value: "1"),
                      CustomButton(text: "2", value: "2"),
                      CustomButton(text: "3", value: "3"),
                      CustomButton(text: "+", value: "+"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CustomButton(text: "0", value: "0"),
                      const CustomButton(text: ".", value: "."),
                      CustomButtonFunction(
                        widthApp: widthApp,
                        function: () => controller.eksekusi(),
                        equal: true,
                        widget: const Text(
                          "=",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
