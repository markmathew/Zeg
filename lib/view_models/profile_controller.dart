import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../common/colors.dart'; // Import for File

class ProfileController extends GetxController {
  var selectImagePath = Rx<File?>(null); // Rx<File?> to hold File object
  var selectedImageSize = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectImagePath.value = File(pickedFile.path); // Create a File object
      selectedImageSize.value =
      "${((selectImagePath.value?.lengthSync() ?? 0) / 1024 / 1024).toStringAsFixed(2)} Mb";
    } else {
      Get.snackbar(
        'Error',
        'No Image Picked',
        colorText: ColorsConstant.lightGreen,
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
