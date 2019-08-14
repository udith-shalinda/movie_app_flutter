import 'dart:ui';

import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  var searchKey = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(56, 66, 86, 1),
        title: new Text(
            "Search",
            style: TextStyle(
              fontSize: 25,
            ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network('https://yourdubaiguide.com/wp-content/uploads/2019/03/Spider-Man-Far-From-Home-movie-release-date-showtimes-Dubai.jpg',
            fit: BoxFit.cover,),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: new Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: searchKey,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                    suffixIcon:IconButton(
                      icon: Icon(Icons.search),
                      color: Colors.white,
                      onPressed: (){},
                      ),
                      hintText: "Enter the search key",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20),),
                  Container(
                    height: MediaQuery.of(context).size.height-200,
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(8, (index) {      //should return widget list
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            child: Center(
                              child: Image.network('https://ksassets.timeincuk.net/wp/uploads/sites/55/2018/05/Deadpool-920x584.jpg',
                                      fit: BoxFit.cover,
                                    ),
                            ),       
                          ),
                        );
                      }),
                  )
                )
              ],
            ),
        ],
      ),
    );
  }
}

