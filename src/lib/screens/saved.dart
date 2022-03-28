import 'package:flutter/material.dart';
import '../screens/names.dart';

//import _saved from '../screens/names.dart';

//https://dev.to/lucianojung/global-variable-access-in-flutter-3ijm

/**
class SavedWords extends StatelessWidget {
  const SavedWords({Key? key}) : super(key: key);

  @override
  //_pushSaved()
  
  Widget build(BuildContext context) {
    final tiles = _saved.map((pair) {
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    });
    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList()
        : <Widget>[];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  }
}
 */
//export List<Widget> savedTiles = tiles;
