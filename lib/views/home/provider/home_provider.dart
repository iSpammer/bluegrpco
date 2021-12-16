import 'dart:convert';

import 'package:bluegrpco/model/data_model.dart';
import 'package:bluegrpco/services/api_service.dart';

class HomeProvider {
  getDataModel({
    required Function(DataModel data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    ApiService().fetchTextFromAPI(
      onSuccess: (data) {
        onSuccess(DataModel.fromJson(data));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
