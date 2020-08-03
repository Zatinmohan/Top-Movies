import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/percent_indicator.dart';
import 'package:topmovies/movielist.dart';
import 'package:topmovies/upperpart.dart';

class HomePage extends StatefulWidget {
  var Key = "";
  var URL = "https://imdb-api.com/en/API/Top250Movies/";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var Link, res, movies;
  double rating;
  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    Link = widget.URL + widget.Key;

    res = await http.get(Link);
    movies = jsonDecode(res.body)["items"];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: <Widget>[
                  UpperBody(),
                  res != null
                      ? Positioned(
                          top: 280.0,
                          child: MovieList(
                            Movies: movies,
                          ))
                      : Center(
                          child: CircularProgressIndicator(
                          valueColor: new AlwaysStoppedAnimation<Color>(
                              Color(0xFFFDEBF00)),
                        )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
