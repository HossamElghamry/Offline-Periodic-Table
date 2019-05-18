import 'package:flutter/material.dart';
import './groups.dart';
import 'tab.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 18,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            isScrollable: true,
            tabs: [
              Tab(
                text: "G1 Alkali Metals",
              ),
              Tab(
                text: "G2 Alkali Earth Metals",
              ),
              Tab(
                text: "G3",
              ),
              Tab(
                text: "G4",
              ),
              Tab(
                text: "G5",
              ),
              Tab(
                text: "G6",
              ),
              Tab(
                text: "G7",
              ),
              Tab(
                text: "G8",
              ),
              Tab(
                text: "G9",
              ),
              Tab(
                text: "G10",
              ),
              Tab(
                text: "G11 Coinage Metals",
              ),
              Tab(
                text: "G12",
              ),
              Tab(
                text: "G13 Triels",
              ),
              Tab(
                text: "G14 Tetrels",
              ),
              Tab(
                text: "G15",
              ),
              Tab(
                text: "G16 Chalcogens",
              ),
              Tab(
                text: "G17 Halogens",
              ),
              Tab(
                text: "G18 Noble Gases",
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
              elements: group11,
            ),
            ElementGroup(
              elements: group11,
            ),
            ElementGroup(
              elements: group11,
            ),
            ElementGroup(
              elements: group11,
            ),
            ElementGroup(
              elements: group11,
            ),
            ElementGroup(
              elements: group11,
            ),
            ElementGroup(
              elements: group11,
            ),
            ElementGroup(
              elements: group11,
            ),
            ElementGroup(
              elements: group11,
            ),
            ElementGroup(
              elements: group12,
            ),
            ElementGroup(
              elements: group13,
            ),
            ElementGroup(
              elements: group14,
            ),
            ElementGroup(
              elements: group14,
            ),
            ElementGroup(
              elements: group16,
            ),
            ElementGroup(
              elements: group17,
            ),
            ElementGroup(
              elements: group18,
            ),
          ],
        ),
      ),
    );
  }
}
