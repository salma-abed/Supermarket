// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:get/get.dart';

/*This controller extends GetxController which implements
  a Disposable interface so, if the widget is removed from the stack
  then it is deleted automatically so by navigating to another screen
  the controller of the Auth. is deleted so the performance increases.
*/
class AuthViewModel extends GetxController {
  int c = 0;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    c++;
    //to update the UI
    update();
  }
}
