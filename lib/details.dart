import 'package:flutter/material.dart';
import './element.dart';

class Details extends StatelessWidget {
  final TableElement elementDetails;
  Details({Key key, @required this.elementDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: elementDetails.color,
        child: Column(
          children: <Widget>[
            _buildInfo1(context),
            _buildInfo2(context),
          ],
        ));
  }

  Widget _buildInfo2(context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        elementDetails.massNum.toString(),
                        style: TextStyle(fontSize: 65),
                      ),
                      Text(
                        "Mass\nNumber",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                )),
                Container(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        elementDetails.atomicNum.toString(),
                        style: TextStyle(fontSize: 65),
                      ),
                      Text(
                        "Atomic\nNumber",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                )),
                Container(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        elementDetails.atomicNum.toString(),
                        style: TextStyle(fontSize: 65),
                      ),
                      Text(
                        "Atomic\nNumber",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        elementDetails.massNum.toString(),
                        style: TextStyle(fontSize: 65),
                      ),
                      Text(
                        "Mass\nNumber",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                )),
                Container(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        elementDetails.atomicNum.toString(),
                        style: TextStyle(fontSize: 65),
                      ),
                      Text(
                        "Atomic\nNumber",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                )),
                Container(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        elementDetails.atomicNum.toString(),
                        style: TextStyle(fontSize: 65),
                      ),
                      Text(
                        "Atomic\nNumber",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo1(context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.2,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: elementDetails.symbol,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      elementDetails.symbol,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: elementDetails.name,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      elementDetails.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
