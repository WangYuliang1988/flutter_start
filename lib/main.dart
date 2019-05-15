import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// Use => for one-line functions or methods.
void main() => runApp(MyApp());

// In Flutter, almost everything is a widget, including alignment, padding, and layout.
// A widgte's main job is to provide a build() method that describes how to display the widget in terms of other, lower level widgets.
// Stateless widgets are immutable, meaning that their properties can't change.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}

// Stateful widgets maintain state that might change during the lifetime of the widget.
// Implementing a stateful widget requires at least tow classes: a State class and a StatefulWidget class that creates an instance of the State class.
// The StatefulWidget itself is immutable, but the State class persists over the lifetime of the widget.
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  Widget _buildSuggestins() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestins(),
    );
  }
}