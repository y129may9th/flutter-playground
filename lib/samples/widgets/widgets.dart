import 'package:flutter/material.dart';
import 'package:flutter_widget_key/samples/widgets/card.dart';
import 'package:flutter_widget_key/samples/widgets/rich_text.dart';

class Widgets extends StatelessWidget {
  const Widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learning widgets',
          style: TextStyle(color: Colors.grey[700]),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('rich text'),
              onPressed: () => _onPressed(context, const RichTextWidget()),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('card'),
              onPressed: () => _onPressed(context, const CardWidget()),
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
