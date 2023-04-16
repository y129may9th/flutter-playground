import 'package:flutter/material.dart';
import 'package:flutter_widget_key/samples/widget_key/widget_key.dart';
import 'package:flutter_widget_key/samples/widgets/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FFF7E9'),
      appBar: AppBar(
        title: Text(
          'Flutter Play Ground',
          style: TextStyle(
            color: HexColor('002E94'),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => _onPressed(context, const Widgets()),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: HexColor('002E94'),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                elevation: 0,
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Widgets',
                      style: TextStyle(
                        color: HexColor('002E94'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onPressed(context, const WidgetKey()),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: HexColor('002E94'),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                elevation: 0,
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Learning widget key',
                      style: TextStyle(
                        color: HexColor('002E94'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
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
