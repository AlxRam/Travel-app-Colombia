import 'package:flutter/material.dart';
import 'package:travel_app/models/data.dart';

import 'moreDetails.dart';

class DetailPage extends StatelessWidget {
  Data city;
  DetailPage({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade700,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        centerTitle: true,
        title: Text("Travel to ${city.cityName}", textScaleFactor: 1.5),
      ),
      body: Column(
        children: [
          Ink.image(height: MediaQuery.of(context).size.height*0.35, image: NetworkImage(city.cityImage), fit: BoxFit.cover),
          const SizedBox(height: 10),
          const Text("Popular Places!", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            height: 185,
            child: ListView.builder(
                shrinkWrap: true,
                clipBehavior: Clip.antiAlias,
                scrollDirection: Axis.horizontal,
                itemCount: city.cityName.length,
                itemBuilder: (
                    BuildContext context, index) => Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => moreDetails(place: city.places[index]))),
                            child: CircleAvatar(
                              backgroundColor: Colors.purple.shade700,
                              backgroundImage: NetworkImage(city.places[index].placeImage),
                              radius: 60,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width:120,
                              child: Text(
                                  city.places[index].placeName,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)
                              )
                          )
                        ]
                      )
                )
            )
          ),
          const SizedBox(height: 1),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: const Text('INFORMATION', style: TextStyle(fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: MediaQuery.of(context).size.width*.9,
            child: Text(
                city.places[0].placeDesc,
                style: const TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
            )
          )
        ]
      )
    );
  }
}

