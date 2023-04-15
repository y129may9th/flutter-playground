import 'package:flutter/material.dart';
import 'package:flutter_widget_key/samples/future_builder/sample.dart';

class FutureBuilderIndex extends StatelessWidget {
  const FutureBuilderIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learning Future Builder',
          style: TextStyle(color: Colors.grey[700]),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('sample'),
              onPressed: () => _onPressed(context, const FutureBuilderSample()),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

Future<void> _onPressed(BuildContext context, Widget widget) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}
