import 'package:flutter/material.dart';
import './groups.dart';
import 'tab.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            isScrollable: true,
            tabs: [
              Tab(
                text: "Group 1",
              ),
              Tab(
                text: "Group 2",
              ),
              Tab(
                text: "Group 3",
              ),
              Tab(
                text: "Group 4",
              ),
              Tab(
                text: "Group 5",
              ),
              Tab(
                text: "Group 6",
              ),
              Tab(
                text: "Group 7",
              ),
              Tab(
                text: "Group 8",
              ),
              Tab(
                text: "Group 9",
              ),
              Tab(
                text: "Group 10",
              ),
              Tab(
                text: "Group 11",
              ),
              Tab(
                text: "Group 12",
              ),
            ],
          ),
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
        body: TabBarView(
          children: [
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupTwo,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
            ElementGroup(
              elements: groupOne,
            ),
          ],
        ),
      ),
    );
  }
}
