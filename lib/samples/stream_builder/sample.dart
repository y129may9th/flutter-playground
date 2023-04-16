import 'package:flutter/material.dart';

class StreamBuilderSample extends StatefulWidget {
  const StreamBuilderSample({
    super.key,
  });

  @override
  State<StreamBuilderSample> createState() => _StreamBuilderSampleState();
}

class _StreamBuilderSampleState extends State<StreamBuilderSample> {
  late Stream<int> data;

  // 1秒ごとに数値を返す関数
  Stream<int> countStream() async* {
    for (var i = 1; i <= 50; i++) {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  void initState() {
    // dataにStream関数を設定している。
    // StreamBuilderでこのdataを監視することで、Streamのデータを取得。
    data = countStream();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: data,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.toString());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error!}');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}


