import 'dart:convert';

import 'package:news/common/entity/entitys.dart';
import 'package:news/common/utils/utils.dart';

class UserAPI {
  static Future<UserResponseEntity> login({UserRequestEntity params}) async {
    var response = await HttpUtil().post('/user/login', params: params);
    //TODO 反序列化会报错
    return UserResponseEntity.fromJson(
        jsonDecode(response) as Map<String, dynamic>);
  }
}
