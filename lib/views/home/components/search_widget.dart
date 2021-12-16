import 'package:flutter/material.dart';
import 'package:search_map_location/utils/google_search/place_type.dart';
import 'package:search_map_location/widget/search_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            SizedBox(height: 60,),
            SearchLocation(
              placeholder: "Search by City, Site, or Promo Code",
              apiKey: "apiKEY",
              hasClearButton: false,
              iconColor: Colors.teal[200]!.withOpacity(0.8),
              placeType: PlaceType.establishment,
              radius: 30000,
              onSelected: (place) async {
              },
            ),
          ],
        )
      ],
    );
  }
}
