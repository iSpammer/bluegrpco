import 'package:bluegrpco/components/loading_overlay.dart';
import 'package:bluegrpco/services/api_service.dart';
import 'package:bluegrpco/views/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/data_model_item.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Get.back();
            // print(apiService.fetchTextFromAPI());
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.dataModel.data!.first.sites!.length,
                itemBuilder: (context, index) => DataModelItem(
                  post: controller.dataModel.data!.first.sites![index],
                ),
              ),
            );

          },
        ),
      ),
    );
  }
}
