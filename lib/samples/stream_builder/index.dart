import 'package:flutter/material.dart';
import 'package:flutter_widget_key/samples/stream_builder/sample.dart';

class StreamBuilderIndex extends StatelessWidget {
  const StreamBuilderIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learning Stream Builder',
          style: TextStyle(color: Colors.grey[700]),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('sample'),
              onPressed: () => _onPressed(context, const StreamBuilderSample()),
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
