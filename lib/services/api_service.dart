import 'dart:convert';

import 'package:bluegrpco/model/data_model.dart';
import 'package:dio/dio.dart';

class ApiService {

  final Dio _http = Dio();
  final String _url =
      "https://mocki.io/v1/733d3fcb-8319-4d21-916c-f6215326b9e1";

  void fetchTextFromAPI(
  {required Function(dynamic data) onSuccess,
      required Function(dynamic error) onError})
  async {
    await _http.get(_url).then((res) {
      print("res ?");
      if (onSuccess != null) onSuccess((res.data));
    }).catchError((error) {
      print("the following error occured ${error}");
      if (onError != null) onError(error);
    });

    print("ss!");
  }
}
