import 'package:flutter/material.dart';

class FutureBuilderSampleModel extends ChangeNotifier {
  late Future<String> data;
  FutureBuilderSampleModel() {
    data = getData();
  }

  Future<String> getData() async {
    return Future<String>.delayed(
      const Duration(seconds: 5),
      () => 'データがありました',
    );
  }
}
