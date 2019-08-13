import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SlideShow extends StatefulWidget {
  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0, 
        title: Text("Popular movies",
                  style: TextStyle(
                    fontFamily: 'Arvo',
                    fontSize: 34,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        actions: <Widget>[
          Icon(Icons.search,
            color: Colors.deepPurpleAccent,
            size: 34,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          //  Padding(
          //    padding: const EdgeInsets.only(top:30.0),
          //    child: Row(
          //      children: <Widget>[
          //        Text("Popular movies",
          //         style: TextStyle(
          //           fontFamily: 'Arvo',
          //           fontSize: 34,
          //           color: Colors.deepPurpleAccent,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       Icon(Icons.search),
          //      ],
          //    )
          //  ),
          Padding(padding: EdgeInsets.only(top: 20),),
        CarouselSlider(
            height: 300.0,
            autoPlay: true,
            aspectRatio: 2.0,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      // shape: BoxShape.circle,
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          )

        ],
        
      ),
    );
  }
}