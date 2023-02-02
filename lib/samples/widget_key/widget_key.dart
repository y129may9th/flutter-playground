import 'package:flutter/material.dart';
import 'package:flutter_widget_key/samples/widget_key/stateful_tiles_page.dart';
import 'package:flutter_widget_key/samples/widget_key/stateless_tiles_page.dart';

class WidgetKey extends StatelessWidget {
  const WidgetKey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learning widget key',
          style: TextStyle(color: Colors.grey[700]),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('state_less'),
              onPressed: () => _onPressed(context, const StatelessTilesPage()),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('state_full'),
              onPressed: () => _onPressed(context, const StatefulTilesPage()),
            ),
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
