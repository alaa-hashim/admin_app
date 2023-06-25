import '../../../core/class/apihandler.dart';

class ItemsData {
  ApiHandler apihandler;
  ItemsData(this.apihandler);
  getData(String link, Map<String, dynamic> body) async {
    var respone = await apihandler.postData(link, body);
    return respone.fold((l) => l, (r) => r);
  }
}
