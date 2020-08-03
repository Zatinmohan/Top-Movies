import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MovieList extends StatefulWidget {
  final Movies;

  const MovieList({Key key, this.Movies}) : super(key: key);
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  paddingSetter(int index) {
    if (index < 9) {
      return EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0, bottom: 20.0);
    } else if (index < 99) {
      return EdgeInsets.only(top: 20.0, left: 20.0, right: 30.0, bottom: 20.0);
    } else {
      return EdgeInsets.only(top: 20.0, left: 10.0, right: 30.0, bottom: 20.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.70,
      color: Color(0xFFF11192F),
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 40.0),
        shrinkWrap: true,
        itemCount: widget.Movies.length,
        itemBuilder: (BuildContext context, int index) {
          var movie = widget.Movies[index];
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: paddingSetter(index),
                    child: Text(
                      "${index + 1}",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFDEBF00),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Text(
                          "${movie["fullTitle"]}",
                          style: TextStyle(
                            color: Color(0xFFFFDFDFD),
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "${movie["imDbRating"]}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0xFFFDDDDDE),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 22.0),
                child: LinearPercentIndicator(
                  percent: double.parse(movie["imDbRating"]) * 0.1,
                  progressColor: Color(0xFFFFDDC00),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
