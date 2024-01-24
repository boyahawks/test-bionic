import 'dart:convert';

import 'package:test_bionic/helper/local_storage.dart';
import 'package:test_bionic/modules/auth/auth.dart';

class AppData {
  // BOOL

  // static set statusAbsensi(bool value) =>
  //     LocalStorage.saveToDisk('statusAbsensi', value);

  // static bool get statusAbsensi {
  //   if (LocalStorage.getFromDisk('statusAbsensi') != null) {
  //     return LocalStorage.getFromDisk('statusAbsensi');
  //   }
  //   return false;
  // }

  // STRING

  static set role(String value) => LocalStorage.saveToDisk('role', value);

  static String get role {
    if (LocalStorage.getFromDisk('role') != null) {
      return LocalStorage.getFromDisk('role');
    }
    return "";
  }

  static set tokenLogin(String value) =>
      LocalStorage.saveToDisk('tokenLogin', value);

  static String get tokenLogin {
    if (LocalStorage.getFromDisk('tokenLogin') != null) {
      return LocalStorage.getFromDisk('tokenLogin');
    }
    return "";
  }

  static set tokenFcmUser(String value) =>
      LocalStorage.saveToDisk('tokenFcmUser', value);

  static String get tokenFcmUser {
    if (LocalStorage.getFromDisk('tokenFcmUser') != null) {
      return LocalStorage.getFromDisk('tokenFcmUser');
    }
    return "";
  }

  static set selectedLanguage(String value) =>
      LocalStorage.saveToDisk('selectedLanguage', value);

  static String get selectedLanguage {
    if (LocalStorage.getFromDisk('selectedLanguage') != null) {
      return LocalStorage.getFromDisk('selectedLanguage');
    }
    return "";
  }

  // LIST

  static set informasiUser(List<InformasiUserModel>? value) {
    if (value != null) {
      List<String> listString = value.map((e) => e.toJson()).toList();
      LocalStorage.saveToDisk('informasiUser', listString);
    } else {
      LocalStorage.saveToDisk('informasiUser', null);
    }
  }

  static List<InformasiUserModel>? get informasiUser {
    if (LocalStorage.getFromDisk('informasiUser') != null) {
      List<String> listData = LocalStorage.getFromDisk('informasiUser');
      return listData
          .map((e) => InformasiUserModel.fromMap(jsonDecode(e)))
          .toList();
    }
    return null;
  }

  // CLEAR ALL DATA

  static void clearAllData() =>
      LocalStorage.removeFromDisk(null, clearAll: true);
}
