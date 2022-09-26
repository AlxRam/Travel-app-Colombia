import 'package:flutter/material.dart';
import 'package:travel_app/models/data.dart';

class DetailPage2 extends StatefulWidget {
  final Data city;
  DetailPage2({required this.city});

  @override
  State<DetailPage2> createState() => _DetailPage2State();
}

class _DetailPage2State extends State<DetailPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.shade800,
        appBar: AppBar(
          backgroundColor: Colors.red.shade800,
          title: Text(widget.city.cityName.toString()),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag:widget.city.cityName.toString() ,
              child: Image.network(
                widget.city.cityImage.toString(),
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Popular Places",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.city.places.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(widget
                                .city.places[index].placeImage
                                .toString()),
                            radius: 40,
                          ),
                          Text(
                            widget.city.places[index].placeName,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget
                  .city.places[0].placeDesc,style: TextStyle(color: Colors.white,fontSize: 18),),
            )
          ],
        ));
  }
}