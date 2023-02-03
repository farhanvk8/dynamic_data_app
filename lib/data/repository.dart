import 'package:dio/dio.dart';

class Reposirtory {
  dynamic getData(String url) async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw 'Failed To fetch';
      }
    } catch (e) {
      rethrow;
    }
  }
}
