import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  increment() => count++;

  RxString name = "Adnan".obs;

  nameChange() {
    name.value = "AutoName_${DateTime.now().millisecondsSinceEpoch}";
  }
}
