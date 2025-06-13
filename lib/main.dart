import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Mount Bromo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'A Spectacular Indonesia Mountain',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.red, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.red, Icons.share, 'SHARE'),
      ],
    );

    Widget twoImagesSection = Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 4, 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://i.pinimg.com/originals/0f/35/a3/0f35a386b52898b311378bd1591c2ab9.jpg',
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 8, 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://www.goodnewsfromindonesia.id/uploads/post/large-gunung-bromo-jawa-timur-a19131d975bce3480c55173330ce1461.jpg',
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
          ),
        ),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Located some 4 hours drive from Surabaya, the capital of '
        'East Java, Mount Bromo is a part of the Bromo Tengger '
        'Semeru National Park that covers a massive area of 800 '
        'square km. While it may be small when measured against '
        'other volcanoes in Indonesia, the magnificent Mt Bromo will '
        'not disappoint with its spectacular views and dramatic '
        'landscapes.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Belajar Flutter'),
        ),
        body: ListView(
          children: [
            Image.network(
              'https://media-cdn.tripadvisor.com/media/photo-o/0d/35/d0/9e/photo0jpg.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            twoImagesSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

  