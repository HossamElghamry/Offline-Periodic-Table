import 'package:flutter/material.dart';
import './element.dart';
import './details.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<TableElement> _elements = [
      TableElement("H", "Hydrogen", 1, 1, Colors.green),
      TableElement("Li", "Lithium", 3, 7, Colors.orange),
      TableElement("Na", "Sodium", 11, 23, Colors.orange),
      TableElement("K", "Potassium", 19, 39, Colors.orange),
      TableElement("Rb", "Rubidium", 37, 84, Colors.orange),
      TableElement("Cs", "Caesium", 55, 133, Colors.orange),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Periodic Table",
          style: TextStyle(
              fontFamily: 'Optimus',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.builder(
        itemCount: _elements.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: _elements[index].color,
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
                                  elementDetails: _elements[index],
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
                          Text(_elements[index].massNum.toString(),
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ],
                      ),
                      Hero(
                        tag: _elements[index].symbol,
                        child: Center(
                          child: Material(
                            color: Colors.transparent,
                            child: Text(_elements[index].symbol,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                      Hero(
                        tag: _elements[index].name,
                        child: Center(
                          child: Material(
                            color: Colors.transparent,
                            child: Text(_elements[index].name,
                                style: TextStyle(
                                  fontSize: 30,
                                )),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(_elements[index].atomicNum.toString(),
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
