import 'dart:convert';

import 'package:gentleroom/models/products.dart';
import 'package:gentleroom/services/custom_exception.dart';
import 'package:gentleroom/services/http_helper.dart';

class MainRepository {
  Future<MainList> getList() async {
    try {
      final res = await HttpHelper().getUrl(url: '/getList');
      var dun = jsonDecode(res);
      return MainList.fromJson(dun);
    } catch (e) {
      throw CustomException(errorMsg: e.toString().toUpperCase());
    }
  }
}
