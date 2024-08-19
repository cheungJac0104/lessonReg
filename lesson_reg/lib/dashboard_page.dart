import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back Zaire'),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Excellent, today\'s your plan is almost done',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Center(
              child: CircularProgressIndicator(
                value: 0.8,
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                strokeWidth: 10,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                '80%',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Personal Plan', style: TextStyle(fontSize: 18)),
                TextButton(onPressed: () {}, child: Text('See all')),
              ],
            ),
            Card(
              child: ListTile(
                title: Text('3 Plans Remaining'),
                trailing: TextButton(onPressed: () {}, child: Text('Go to Plan')),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Work Plan', style: TextStyle(fontSize: 18)),
                TextButton(onPressed: () {}, child: Text('See all')),
              ],
            ),
            Card(
              child: ListTile(
                title: Text('8 Plans Remaining'),
                trailing: TextButton(onPressed: () {}, child: Text('Go to Plan')),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('On Going Project', style: TextStyle(fontSize: 18)),
                TextButton(onPressed: () {}, child: Text('See all')),
              ],
            ),
            Card(
              child: ListTile(
                title: Text('Create Landing Page'),
                subtitle: Text('Creating webflow design and responsive on mobile'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Jogging'),
                subtitle: Text('Workout'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            SizedBox(width: 40), // The dummy child
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.person), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
