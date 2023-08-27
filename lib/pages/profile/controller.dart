import 'package:chatty/common/store/user.dart';
import 'package:chatty/pages/profile/index.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileController extends GetxController {
  ProfileController();
  final title = "Chatty .";
  final state = ProfileState();

  Future<void> goLogout() async {
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }
}
