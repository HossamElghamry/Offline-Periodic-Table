import 'package:flutter/material.dart';

class TableElement {
  final String _symbol;
  final String _name;
  final int _massNum;
  final int _atomicNum;
  final Color _color;

  TableElement(
      this._symbol, this._name, this._massNum, this._atomicNum, this._color);

  String get symbol => _symbol;
  String get name => _name;
  int get atomicNum => _atomicNum;
  int get massNum => _massNum;
  Color get color => _color;
}
