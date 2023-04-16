import 'package:flutter/material.dart';

class StreamBuilderSampleModel extends ChangeNotifier {
  late Future<String> data;
  StreamBuilderSampleModel() {
    data = getData();
  }

  Future<String> getData() async {
    return Future<String>.delayed(
      const Duration(seconds: 5),
      () => 'データがありました',
    );
  }
}
