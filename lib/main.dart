import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quotes> quotes = [
    Quotes(quote: 'Quote 1', author: 'Author 1'),
    Quotes(quote: 'Quote 2', author: 'Author 2'),
    Quotes(quote: 'Quote 3', author: 'Author 3'),
    Quotes(quote: 'Quote 4', author: 'Author 4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 150, 149, 149),
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          backgroundColor: Color.fromARGB(255, 92, 92, 92),
          centerTitle: true,
        ),
        body: Column(
            children: quotes
                .map((quote) => Text('${quote.quote} - ${quote.author}'))
                .toList()));
  }
}
