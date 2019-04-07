import 'package:flutter/material.dart';
import './element.dart';
import './details.dart';

class ElementGroup extends StatelessWidget {
  final List<TableElement> elements;
  ElementGroup({Key key, @required this.elements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        itemCount: elements.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: elements[index].color,
            elevation: 7,
            child: InkWell(
              splashColor: Colors.black,
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder<Null>(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return AnimatedBuilder(
                            animation: animation,
                            builder: (BuildContext context, Widget child) {
                              return Opacity(
                                opacity: animation.value,
                                child: Details(
                                  elementDetails: elements[index],
                                ),
                              );
                            });
                      },
                      transitionDuration: Duration(milliseconds: 500)),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(elements[index].massNum.toString(),
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ],
                      ),
                      Hero(
                        tag: elements[index].symbol,
                        child: Center(
                          child: Material(
                            color: Colors.transparent,
                            child: Text(elements[index].symbol,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                      Hero(
                        tag: elements[index].name,
                        child: Center(
                          child: Material(
                            color: Colors.transparent,
                            child: Text(elements[index].name,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(elements[index].atomicNum.toString(),
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
