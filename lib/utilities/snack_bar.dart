import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snack.dart';

class WeatherSnackBars {
  static errorSnackBar({required String message}) {
    Get.rawSnackbar(
      snackStyle: SnackStyle.FLOATING,
      message: message,
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: Get.width / 1.6,
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Icon(
            Icons.clear,
            color: Colors.white,
          )
        ],
      ),
      margin: const EdgeInsets.all(24),
      snackPosition: SnackPosition.TOP,
      borderRadius: 8,
      icon: const Icon(
        Icons.cancel,
        color: Colors.white,
      ),
      isDismissible: false,
      backgroundColor: Colors.red,
    );
  }

  static successSnackBar({required String message}) {
    return Get.rawSnackbar(
      snackStyle: SnackStyle.FLOATING,
      message: message,
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          const Icon(
            Icons.clear,
            color: Colors.white,
          )
        ],
      ),
      margin: const EdgeInsets.all(24),
      snackPosition: SnackPosition.TOP,
      borderRadius: 8,
      icon: const Icon(
        Icons.check_circle_rounded,
        color: Colors.white,
      ),
      isDismissible: false,
      backgroundColor: Colors.green,
    );
  }
}
