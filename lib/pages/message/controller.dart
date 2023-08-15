import 'package:chatty/common/routes/routes.dart';
import 'package:chatty/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Chatty .";
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}
