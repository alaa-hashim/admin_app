// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:io';

import '../../../core/class/apihandler.dart';

class CatData {
  ApiHandler apihandler;
  CatData(this.apihandler);
  getData(String link, Map<String, dynamic> body) async {
    var respone = await apihandler.postData(link, body);
    return respone.fold((l) => l, (r) => r);
  }

  addData(
    String link,
    Map data,
  ) async {
    var respone = await apihandler.postData(link, data);
    return respone.fold((l) => l, (r) => r);
  }

  editData(String link, Map data, [File? file]) async {
    var respone;
    if (file == null) {
      respone = await apihandler.postData(link, data);
    } else {
      respone = await apihandler.addRequestWithImageOne(link, data, file);
    }

    return respone.fold((l) => l, (r) => r);
  }

  deleteData(String link, Map data) async {
    var respone = await apihandler.postData(link, data);
    return respone.fold((l) => l, (r) => r);
  }
}
