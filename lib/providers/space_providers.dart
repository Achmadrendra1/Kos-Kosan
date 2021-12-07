import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kos_kosan/Models/spaces.dart';

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    final result = await http
        .get(Uri.https('bwa-cozy.herokuapp.com', 'recommended-spaces'));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> space = data.map((item) => Space.fromJson(item)).toList();
      return space;
    } else {
      return <Space>[];
    }
  }
}
