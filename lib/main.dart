import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quotes> quotes = [
    Quotes(quote: 'Quote 1', author: 'Author 1'),
    Quotes(quote: 'Quote 2', author: 'Author 2'),
    Quotes(quote: 'Quote 3', author: 'Author 3'),
    Quotes(quote: 'Quote 4', author: 'Author 4'),
    Quotes(quote: 'Quote 5', author: 'Author 5'),
    Quotes(quote: 'Quote 6', author: 'Author 6'),
    Quotes(quote: 'Quote 7', author: 'Author 7'),
    Quotes(quote: 'Quote 8', author: 'Author 8'),
    Quotes(quote: 'Quote 9', author: 'Author 9'),
    Quotes(quote: 'Quote 10', author: 'Author 10'),
    Quotes(quote: 'Quote 11', author: 'Author 11'),
    Quotes(quote: 'Quote 12', author: 'Author 12'),
    Quotes(quote: 'Quote 13', author: 'Author 13'),
    Quotes(quote: 'Quote 14', author: 'Author 14'),
    Quotes(quote: 'Quote 15', author: 'Author 15'),
    Quotes(quote: 'Quote 16', author: 'Author 16'),
    Quotes(quote: 'Quote 17', author: 'Author 17'),
    Quotes(quote: 'Quote 18', author: 'Author 18'),
    Quotes(quote: 'Quote 19', author: 'Author 19'),
    Quotes(quote: 'Quote 20', author: 'Author 20'),
    Quotes(quote: 'Quote 21', author: 'Author 21'),
    Quotes(quote: 'Quote 22', author: 'Author 22'),
  ];
  Widget quoteTemplate(quote) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '${quote.quote}',
            style: const TextStyle(
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '${quote.author}',
            style: const TextStyle(
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 150, 149, 149),
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          backgroundColor: const Color.fromARGB(255, 92, 92, 92),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
                children:
                    quotes.map((quote) => (quoteTemplate(quote))).toList())));
  }
}
