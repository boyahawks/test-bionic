part of "./dashboard.dart";

class DashboardController extends GetxController {
  ScrollController controllerScroll = ScrollController();
  DateTime? currentBackPressTime;
  RxBool statusOnWillPop = false.obs;

  Future<void> initData() async {}

  Future<void> closeApp() async {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      UtilsAlert.showToast("Press again to exit");
      statusOnWillPop.value = false;
      statusOnWillPop.refresh();
    } else {
      statusOnWillPop.value = true;
      statusOnWillPop.refresh();
    }
  }
}
