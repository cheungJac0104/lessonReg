import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  DailyPlanPage createState() => DailyPlanPage();
}

class DailyPlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification action
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Zaire Carder',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Execellent, Today\'s your\nplan is almost done',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircularProgressIndicator(
                    value: 0.8,
                    strokeWidth: 6.0,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Category',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                  icon: Icons.person,
                  title: 'Personal Plan',
                  plansRemaining: '3 Plans Remaining',
                  onTap: () {
                    // Navigate to Personal Plan
                  },
                ),
                CategoryCard(
                  icon: Icons.work,
                  title: 'Work Plan',
                  plansRemaining: '8 Plans Remaining',
                  onTap: () {
                    // Navigate to Work Plan
                  },
                ),
              ],
            ),
            SizedBox(height: 24.0),
            Text(
              'On Going Plan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            PlanCard(
              icon: Icons.web,
              title: 'Creating webflow design and responsive on mobile',
              selectedOption: 'Create Lo-Fi',
              options: ['Create Lo-Fi', 'Create Landing Page'],
            ),
            SizedBox(height: 8.0),
            PlanCard(
              icon: Icons.fitness_center,
              title: 'Workout',
              selectedOption: 'Jogging',
              options: ['Jogging', 'Strength Training', 'Yoga'],
            ),
            Spacer(),
            FloatingActionButton(
              onPressed: () {
                // Handle add new plan action
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String plansRemaining;
  final VoidCallback onTap;

  CategoryCard({
    required this.icon,
    required this.title,
    required this.plansRemaining,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(plansRemaining),
          ],
        ),
      ),
    );
  }
}

class PlanCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String selectedOption;
  final List<String> options;

  PlanCard({
    required this.icon,
    required this.title,
    required this.selectedOption,
    required this.options,
  });

  @override
  _PlanCardState createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  late String _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.selectedOption;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(widget.icon),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: _selectedOption,
                  items: widget.options.map((option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                  underline: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
