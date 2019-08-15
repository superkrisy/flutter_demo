import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
	@override
	Widget build(BuildContext context) {
    	return MaterialApp(
			title: '电影海报',
			home: Scaffold(
				appBar: AppBar(
					title: Text('电影海报'),
				),
				body: GridView.count(
					crossAxisCount: 3,
					mainAxisSpacing: 2,
					crossAxisSpacing: 2,
					childAspectRatio: 0.7,
					children: <Widget>[
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/19/104352.19035076_170X256X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/26/104530.55304347_170X256X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/31/110053.38913357_170X256X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/08/02/154522.88850912_170X256X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/08/05/103716.58042294_170X256X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/08/092553.65991356_126X190X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/03/110612.68743951_126X190X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/24/094215.89957301_126X190X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/03/102354.57512057_126X190X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/08/09/095221.37898248_170X256X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/29/095336.68436562_170X256X4.jpg',
							fit: BoxFit.cover,
						),
						Image.network(
							'http://img5.mtime.cn/mg/2019/07/18/113303.82852971_170X256X4.jpg',
							fit: BoxFit.cover,
						),
					],
				)
			)
		);
  	}
}