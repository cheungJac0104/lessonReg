import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _MyBooksPageState createState() => _MyBooksPageState();
}

class _MyBooksPageState extends State<MyBooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Find read',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _CategoryButton(label: 'POPULAR', isActive: true),
                _CategoryButton(label: 'ROMANTIC'),
                _CategoryButton(label: 'SCIENCE'),
                _CategoryButton(label: 'STORY'),
                _CategoryButton(label: 'MORE'),
              ],
            ),
            SizedBox(height: 24.0),
            Text(
              'Top readings',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  _BookCard(
                    imageAsset: 'assets/copper_canyon.png',
                    title: 'Copper Canyon',
                    author: 'Last the Road is the debut and only novela signed by British singer Dua Lipa',
                  ),
                  SizedBox(height: 16.0),
                  _BookCard(
                    imageAsset: 'assets/discover_your_path.png',
                    title: 'Discover Your Path To Success',
                    author: 'An unique is one of the biggest superstars to have emerged from the',
                  ),
                  SizedBox(height: 16.0),
                  _BookCard(
                    imageAsset: 'assets/south_matteburgh.png',
                    title: 'South Matteburgh',
                    author: 'Sierra Techumara, popularly known as Copper Canyon, is situated in Mexico.',
                  ),
                  SizedBox(height: 16.0),
                  _BookCard(
                    imageAsset: 'assets/priceview.png',
                    title: 'Priceview',
                    author: 'Last the Road is the debut and only novela signed by British singer Dua Lipa',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final String label;
  final bool isActive;

  const _CategoryButton({
    Key? key,
    required this.label,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        primary: isActive ? Colors.blue : Colors.grey,
      ),
      child: Text(label),
    );
  }
}

class _BookCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String author;

  const _BookCard({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageAsset,
              width: 80.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    author,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
