import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(CompanyNameList());

class CompanyNameList extends StatelessWidget
{
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Company Name List',
			theme: ThemeData(
				primaryColor: Colors.white,
			),
			home: RandomWords()
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
	final List<WordPair> _aWords = <WordPair>[];
	final Set<WordPair> _aSaved = Set<WordPair>();
	final TextStyle _textStyle = const TextStyle(
		fontSize: 20,
		color: Colors.lightBlue
	);

	void _pushSaved(){
		Navigator.of(context).push(
			MaterialPageRoute<void>(
				builder: (BuildContext context){
					final Iterable<ListTile> tiles = _aSaved.map(
						(WordPair pair){
							return ListTile(
								title: Text(
									pair.asPascalCase,
									style: _textStyle,
								)
							);
						}
					);

					final List<Widget> divided = ListTile.divideTiles(
						context: context,
						tiles: tiles
					).toList();

					return Scaffold(
						appBar: AppBar(
							title: Text('favorite list'),
							actions: <Widget>[

							],
						),
						body: ListView(
							children: divided
						),
					);
				}
			)
		);
	}

	Widget _buildRow(WordPair pair){
		final bool _isSaved = _aSaved.contains(pair);
		return ListTile(
			title: Text(
				pair.asPascalCase,
				style: _textStyle,
			),
			trailing: Icon(
				_isSaved ? Icons.favorite : Icons.favorite_border,
				color: _isSaved ? Colors.red : null,
			),
			onTap: (){
				setState(() {
					if(_isSaved){
						_aSaved.remove(pair);
					}else{
						_aSaved.add(pair);
					}
				});
			},
		);
	}

	Widget _buildList(){
		return ListView.builder(
			padding: const EdgeInsets.all(8),
			itemBuilder: (BuildContext _context, int i){
				if(i.isOdd){
					return Divider();
				}

				final int index = i ~/ 2;
				if(index >= _aWords.length){
					_aWords.addAll(generateWordPairs().take(10));
				}

				return _buildRow(_aWords[index]);
			}
		);
	}

	@override
	Widget build(BuildContext context) {
		return new Scaffold (                   // 代码从这里...
			appBar: new AppBar(
				title: new Text('Startup Name Generator'),
				actions: <Widget>[
					IconButton(
						icon: Icon(Icons.list),
						onPressed: _pushSaved
					)
				],
			),
			body: _buildList(),
		);
	}
}