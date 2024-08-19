import 'package:flutter/material.dart';

class FitnessTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan Details'),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.calendar_today), onPressed: () {}),
        ],
      ),
      body: Column(
        children: <Widget>[
          // Days of the week
          Container(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 7,
                  child: Text(['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'][index]),
                );
              },
            ),
          ),
          // Workout Report Section
          Card(
            child: ListTile(
              title: Text('Calories Burned'),
              subtitle: Text('130kcal'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Carbs'),
              subtitle: Text('20g'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Fat'),
              subtitle: Text('13g'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Protein'),
              subtitle: Text('21.1g'),
            ),
          ),
          // Activity Section
          Card(
            child: ListTile(
              title: Text('Stretching'),
              subtitle: Text('4-22 mins'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Yoga'),
              subtitle: Text('5 kms'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Weight lifting'),
            ),
          ),
        ],
      ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}