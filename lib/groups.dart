import './element.dart';
import 'package:flutter/material.dart';

final List<TableElement> groupOne = [
  TableElement("H", "Hydrogen", 1, 1, Color(0xFFA3C7D2), 0.000082, 1312.05),
  TableElement("Li", "Lithium", 3, 7, Color(0xFFEBBFD8), 0.534, 520.22),
  TableElement("Na", "Sodium", 11, 23, Color(0xFFEBBFD8), 0.97, 495.84),
  TableElement("K", "Potassium", 19, 39, Color(0xFFEBBFD8), 0.89, 418.80),
  TableElement("Rb", "Rubidium", 37, 84, Color(0xFFEBBFD8), 1.53, 403.03),
  TableElement("Cs", "Caesium", 55, 133, Color(0xFFEBBFD8), 1.873, 375.70),
  TableElement("Fr", "Francium", 87, 233, Color(0xFFEBBFD8), null, 392.96),
];

// TableElement(String symbol, String name, int atomicNum, int atomicMass,
//               Color(0xFF/FBC9E5), double density, double ionizationenergy, int melting,
//               int boiling, String appearance)

final List<TableElement> groupTwo = [
  TableElement("Be", "Beryllium", 4, 9, Color(0xFFFBC9E5), 1.85, 899.50),
  TableElement("Mg", "Magnesium", 12, 24, Color(0xFFFBC9E5), 1.74, 737.35),
  TableElement("Ca", "Calcium", 20, 40, Color(0xFFFBC9E5), 1.54, 389.83),
  TableElement("Sr", "Strontium", 38, 88, Color(0xFFFBC9E5), 2.64, 549.47),
  TableElement("Ba", "Barium", 56, 137, Color(0xFFFBC9E5), 3.62, 502.84),
  TableElement("Ra", "Radium", 88, 236, Color(0xFFFBC9E5), 5.00, 509.29),
];
