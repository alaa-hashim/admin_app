import 'package:admin_app/core/class/satusrequst.dart';

hadlingData(respone) {
  if (respone is StatusRequst) {
    return respone;
  } else {
    return StatusRequst.success;
  }
}
