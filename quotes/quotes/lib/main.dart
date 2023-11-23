// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> myquotes = [
    Quote(
        text: 'Be yourself, everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'Do what you think is right even if you are wrong',
        author: 'Mahatma Gandhi'),
    Quote(
        text: 'Live everyday as if it be thy last', author: 'Marcus Aurelius'),
    Quote(text: 'The truth is rarely pure and simple', author: 'Oscar Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 242),
      appBar: AppBar(
        title: const Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children:
              myquotes.map((quote) => QuoteTemplate(quote: quote)).toList(),
        ),
      ),
    );
  }
}






// // additional info:
// in the current version of dart we need to also add the following lines of code: 
// class QuoteList extends StatefulWidget {
//   const QuoteList({Key? key}) : super(key: key);
//this will make the file run 

//stack overflow for horizontally scrolling cards:
//https://stackoverflow.com/questions/51607440/horizontally-scrollable-cards-with-snap-effect-in-flutter

// 'Never let the future disturb you - you will meet it with the same weapons of reason and mind that, today, guard you against the present',
    // 'It is the power of th mind to be unconquerable',
    // 'Any person capable of angering you only when you permit yourself to be disturbed by him',
    // 'The best way out is always through',
    // 'A good man is hard to find, but that does not mean he will always be easy to find',
    // 'You can\'t have your cake and eat it too',
    // 'Live every day as if it be thy last'



