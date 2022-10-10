import 'package:get/get.dart';
import 'package:function_tree/function_tree.dart';

class HomeController extends GetxController {
  var text = "".obs;
  var hasil = "".obs;

  void changeText(String data) {
    if (data == "Clear") {
      if (text.value.isNotEmpty) {
        hasil.value = "";
        text.value = text.substring(0, text.value.length - 1);
      }
    } else if (data == "AllClear") {
      hasil.value = "";
      text.value = "";
    } else {
      text.value = text.value + data;
    }
  }

  void eksekusi() {
    try {
      hasil.value = "${text.value.interpret()}";
    } catch (e) {
      if (text.value.isNotEmpty) {
        hasil.value = "Error";
      }
    }
  }
}
