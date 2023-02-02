import 'package:flutter/material.dart';
import 'dart:math';

class StatefulColorfulTile extends StatefulWidget {
  const StatefulColorfulTile({Key? key}) : super(key: key);

  @override
  StatefulColorfulTileState createState() => StatefulColorfulTileState();
}

class StatefulColorfulTileState extends State<StatefulColorfulTile> {
  late Color _color;

  @override
  void initState() {
    super.initState();
    _color = UniqueColorGenerator.getColor();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: _color,
        child: const Padding(
          padding: EdgeInsets.all(80.0),
        ),
      ),
    );
  }
}

class UniqueColorGenerator {
  static final List _colorOptions = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.amber,
    Colors.black,
  ];
  static final Random _random = Random();
  static Color getColor() {
    if (_colorOptions.isNotEmpty) {
      return _colorOptions.removeAt(_random.nextInt(_colorOptions.length));
    } else {
      return Color.fromARGB(_random.nextInt(256), _random.nextInt(256),
          _random.nextInt(256), _random.nextInt(256));
    }
  }
}

class StatefulTilesPage extends StatefulWidget {
  const StatefulTilesPage({super.key});

  @override
  StatefulTilesPageState createState() => StatefulTilesPageState();
}

class StatefulTilesPageState extends State<StatefulTilesPage> {
  late List<Widget> _tiles;
  @override
  void initState() {
    super.initState();
    _tiles = [
      const StatefulColorfulTile(),
      const StatefulColorfulTile(),
    ];
  }

  void _swapTiles() {
    setState(() {
      // _tiles[1] の後ろに、remove した _tiles[0] を insert している。
      _tiles.insert(1, _tiles.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: _tiles),
      floatingActionButton: FloatingActionButton(
          onPressed: _swapTiles,
          child: const Icon(
            Icons.sentiment_satisfied,
          )),
    );
  }
}
