// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:another_flushbar/flushbar.dart';
// import 'package:another_flushbar/flushbar_helper.dart';
// import 'package:another_flushbar/flushbar_route.dart';

// void clearText(TextEditingController controller) {
//   controller.clear();
// }

// showErrorToast(message) {
//   Get.snackbar(message, '',
//       snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
// }

// showseuessToast(message) {
//   Get.snackbar(message, '',
//       colorText: Colors.white,
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.green);
// }

// class Helper {
//   static void showError({
//     required BuildContext context,
//     required String subtitle,
//   }) {
//     Flushbar(
//       message: subtitle,
//       backgroundColor: Theme.of(context).errorColor,
//       padding: const EdgeInsets.all(24.0),
//       margin: const EdgeInsets.all(24.0),
//       duration: const Duration(seconds: 3),
//       // textDirection: TextDirection.rtl,
//       borderRadius: BorderRadius.circular(10.0),
//     ).show(context);
//   }

//   static void showseuess({
//     required BuildContext context,
//     required String subtitle,
//   }) {
//     Flushbar(
//       message: subtitle,
//       backgroundColor: Colors.green,
//       padding: const EdgeInsets.all(24.0),
//       margin: const EdgeInsets.all(24.0),
//       duration: const Duration(seconds: 3),
//       borderRadius: BorderRadius.circular(10.0),
//     ).show(context);
//   }
// }
