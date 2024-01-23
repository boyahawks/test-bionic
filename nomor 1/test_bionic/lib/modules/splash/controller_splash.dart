part of "./splash.dart";

class SplashController extends GetxController {
  CarouselController corouselSplash = CarouselController();

  var indexCorousel = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // loadingNextRoute();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  Future<void> pageLogin() async {
    // await Future.delayed(const Duration(seconds: 2));
    Routes.routeOff(type: "login");
  }
}
