import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:priodic_table/model/element.dart';

Future<String> _loadElementAssets() async{
  return await rootBundle.loadString("data/table.json");
}

Future<ElementList> loadElements() async{
  String jsonElements = await _loadElementAssets();
  final jsonResponse = jsonDecode(jsonElements);
  return ElementList.fromJson(jsonResponse);

}