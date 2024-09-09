import 'package:assignment_shopping/controller/home_controller.dart';
import 'package:get/get.dart';

Future<void> onInit() async {
  Get.put(HomeController(), permanent: true);
}
