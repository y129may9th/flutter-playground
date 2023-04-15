import 'package:flutter/material.dart';
import 'package:flutter_widget_key/samples/future_builder/sample_model.dart';
import 'package:provider/provider.dart';

class FutureBuilderSample extends StatelessWidget {
  const FutureBuilderSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FutureBuilderSampleModel>(
      create: (_) => FutureBuilderSampleModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('FutureBuilder'),
        ),
        body: Consumer<FutureBuilderSampleModel>(
            builder: (context, model, child) {
          return Center(
            child: FutureBuilder(
              future: model.getData(),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error!}');
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          );
        }),
      ),
    );
  }
}
