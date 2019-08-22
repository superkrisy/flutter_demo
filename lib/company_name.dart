import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(CompanyName());

class CompanyName extends StatelessWidget
{
	@override
	Widget build(BuildContext context) {
		final words = WordPair.random();
		return MaterialApp(
			title: 'Company Name',
			home: Scaffold(
				appBar: AppBar(
					title: Text('Company Name'),
				),
				body: Center(
					child: RandomWords()
				),
			),
		);
	  }
}

class RandomWords extends StatefulWidget
{
	@override
	RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords>
{
	@override
	Widget build(BuildContext context) {
		final words = WordPair.random();
		return Text(
			words.asPascalCase,
			style: TextStyle(
				fontSize: 20,
				color: Colors.lightBlue,
				decoration: TextDecoration.underline,
				decorationStyle: TextDecorationStyle.double
			),
		);
	  }
}