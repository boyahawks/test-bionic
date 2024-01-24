import 'package:get/get.dart';
import 'package:test_bionic/modules/auth/auth.dart';
import 'package:test_bionic/modules/dashboard/dashboard.dart';

class Routes {
  static routeTo({required String type, dynamic data}) {
    if (type == "dashboard2") {
      Get.to(
        const Dashboard2Screen(),
        duration: const Duration(milliseconds: 300),
        transition: Transition.rightToLeftWithFade,
      );
    }
  }

  static routeOff({required String type, dynamic data}) {
    if (type == "login") {
      Get.offAll(
        LoginView(),
        duration: const Duration(milliseconds: 300),
        transition: Transition.leftToRightWithFade,
      );
    } else if (type == "dashboard") {
      Get.offAll(
        const DashboardScreen(),
        duration: const Duration(milliseconds: 300),
        transition: Transition.leftToRightWithFade,
      );
    }
  }
}
