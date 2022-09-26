import 'package:flutter/material.dart';
import 'package:travel_app/models/data.dart';

class moreDetails extends StatelessWidget {
  Place place;
  // const example({Key? key}) : super(key: key);
  moreDetails({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        foregroundColor: Colors.purple.shade500,
        title: Text('Meet ${place.placeName}', textScaleFactor: 1.3),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(place.placeImage)
                )
            )
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width*.9,
            child: Text(
              place.placeDesc,
              style: TextStyle(fontSize: 20, color: Colors.purple.shade500, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            )
          )
        ]
      )
    );
  }
}
