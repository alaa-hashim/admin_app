// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

cameraUpload() async {
  final PickedFile? file = await ImagePicker()
      .getImage(source: ImageSource.camera, imageQuality: 70);
  if (file != null) {
    return File(file.path);
  } else {
    return null;
  }
}

fileUpload() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ["PNG", "JPG", "JPEG", "png", "jpg", "jpeg"]);
  if (result != null) {
    return File(result.files.single.path!);
  } else {
    return null;
  }
}
