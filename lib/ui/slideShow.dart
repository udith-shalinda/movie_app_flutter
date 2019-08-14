import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SlideShow extends StatefulWidget {
  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  int _current = 0;
  final List<String> _listViewData = [
    "A List View with many Text - Here's one!",
    "A List View with many Text - Here's another!",
    "A List View with many Text - Here's more!",
    "A List View with many Text - Here's more!",
  ];

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
            items: _listViewData.map((i) {
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
                    child: Image.network('https://yourdubaiguide.com/wp-content/uploads/2019/03/Spider-Man-Far-From-Home-movie-release-date-showtimes-Dubai.jpg',
                            fit: BoxFit.cover,),                  );
                },
              );
            }).toList(),
          ),
           Padding(
             padding: const EdgeInsets.only(top:10.0),
             child: Row(
               children: <Widget>[
                 Text("New movies",
                  style: TextStyle(
                    fontFamily: 'Arvo',
                    fontSize: 24,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               ],
             )
           ),
          Padding(padding: EdgeInsets.only(top: 20),),
          Container(
            height: 200,
            child: GridView.count(
              // crossAxisSpacing: 10.0,
              // // padding: const EdgeInsets.all(20.0),
              // shrinkWrap: true,
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(4, (index) {      //should return widget list
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.network('https://yourdubaiguide.com/wp-content/uploads/2019/03/Spider-Man-Far-From-Home-movie-release-date-showtimes-Dubai.jpg',
                              fit: BoxFit.cover,),
                    ),
                  ),
                );
              }),
            )
          )

        ],
        
      ),
    );
  }
}