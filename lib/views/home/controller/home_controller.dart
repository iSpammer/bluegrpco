import 'package:bluegrpco/model/data.dart';
import 'package:bluegrpco/model/data_model.dart';
import 'package:bluegrpco/model/sites.dart';
import 'package:bluegrpco/views/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class HomeController extends GetxController {
  DataModel dataModel = DataModel();
  Map<String, Marker> markers = {};
  bool isLoading = true;

  @override
  void onInit() {
    print("init");
    HomeProvider().getDataModel(
      onSuccess: (data) {
        print("sucessss");
        dataModel = data;
        isLoading = false;
        _loadMarkers();
        update();
      },
      onError: (error) {
        print("Error Occured");

        isLoading = false;
        update();
      },
    );
    super.onInit();
  }

  void _loadMarkers() {
    for (Data data in dataModel.data ?? []) {
      for (Sites site in data.sites ?? []) {

        // double siteLat = double.parse(lat);
        // double siteLong = double.parse(long);


        double siteLat = double.parse(site.location!.lat ?? "0");
        double siteLong = double.parse(site.location!.lat ?? "0");
        markers[Uuid().v1()] = Marker(
          onTap: () => Get.defaultDialog(
            title: site.name ?? "N/A",
            content: Container(
              child: Column(
                children: [
                  Image(image: NetworkImage(site.cover ?? "")),
                  Text("${site.siteType}")
                ],
              ),
            ),
          ),
          markerId: MarkerId(Uuid().v1()),
          position: LatLng(
            siteLat,
            siteLong,
          ),
          infoWindow: InfoWindow(
            title: site.name,
          ),
        );
      }
      double lat = double.parse(data.location!.lat ?? "0");
      double long = double.parse(data.location!.lat ?? "0");
      markers[Uuid().v1()] = Marker(
        markerId: MarkerId(Uuid().v1()),
        position: LatLng(
          lat,
          long,
        ),
        infoWindow: InfoWindow(
          title: data.name,

        ),
      );

    }
  }
}
