import 'package:bluegrpco/components/loading_overlay.dart';
import 'package:bluegrpco/model/data_model.dart';
import 'package:bluegrpco/services/api_service.dart';
import 'package:bluegrpco/views/home/components/search_widget.dart';
import 'package:bluegrpco/views/home/components/drawer_widget.dart';
import 'package:bluegrpco/views/detail/components/data_model_item.dart';
import 'package:bluegrpco/views/home/controller/home_controller.dart';
import 'package:bluegrpco/views/detail/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:search_map_location/utils/google_search/place_type.dart';
import 'package:search_map_location/widget/search_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.find<HomeController>();

  final apiService = Get.find<ApiService>();


  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: DrawerWidget(),

      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return LoadingOverlay(
                  isLoading: controller.isLoading,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: const LatLng(30, 30),
                      zoom: 10.0,
                    ),
                    markers: controller.markers.values.toSet(),
                  ),
                );
              },
            ),
          ),
          SearchWidget(),
          Positioned(
            left: 20,
            top: 63,
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldState.currentState!.openDrawer();
              }
            ),
          ),
        ],
      ),
    );
  }
}

