part of "./auth.dart";

class AuthController extends GetxController {
  var name = TextEditingController().obs;
  var email = TextEditingController().obs;
  var password = TextEditingController().obs;

  var checkedRemember = false.obs;
  var showPassword = false.obs;
  var showPasswordConfirm = false.obs;

  Future<void> validasiLogin() async {
    // List<InformasiUserModel> dataUser = [
    //   InformasiUserModel(email: email.value.text, password: password.value.text)
    // ];
    // AppData.informasiUser = dataUser;
    // await Future.delayed(const Duration(seconds: 3));
    Routes.routeOff(type: "dashboard");
  }
}
