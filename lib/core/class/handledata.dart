import 'package:admin_app/core/class/satusrequst.dart';

handlingData(response) {
  if (response is StatusRequst) {
    return response;
  } else {
    return StatusRequst.success;
  }
}
