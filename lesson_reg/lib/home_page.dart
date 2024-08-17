import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Client-specific variables
  int remainingClasses = 10;
  DateTime expirationDate = DateTime.now().add(Duration(days: 30));

  // Admin-specific variables
  int newClientClasses = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Book Hall'),
        actions: [
          if (MediaQuery.of(context).size.width > 600)
            Row(
              children: [
                // Client Phrases
                TextButton(
                  onPressed: () {},
                  child: Text('Create time book hall'),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {},
                  child: Text('Cancellation 2 hours in advance'),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {},
                  child: Text('Remaining classes: $remainingClasses'),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {},
                  child: Text(
                      'Expiration date: ${DateFormat('yyyy-MM-dd').format(expirationDate)}'),
                ),
                SizedBox(width: 16.0),

                // Admin Phrases
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AddNewClientDialog(
                        onRefill: (newClasses) {
                          setState(() {
                            remainingClasses += newClasses;
                          });
                        },
                      ),
                    );
                  },
                  child: Text('Add new client'),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {
                    setState(() {
                      remainingClasses += newClientClasses;
                      newClientClasses = 0;
                    });
                  },
                  child: Text('Refill the classes'),
                ),
              ],
            ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (MediaQuery.of(context).size.width <= 600)
              // Client Phrases
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create time book hall'),
                  SizedBox(height: 8.0),
                  Text('Cancellation 2 hours in advance'),
                  SizedBox(height: 8.0),
                  Text('Remaining classes: $remainingClasses'),
                  SizedBox(height: 8.0),
                  Text(
                      'Expiration date: ${DateFormat('yyyy-MM-dd').format(expirationDate)}'),
                  Divider(),
                ],
              ),

            // Admin Phrases
            Text('Add new client'),
            SizedBox(height: 8.0),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  newClientClasses = int.parse(value);
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter new client classes',
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  remainingClasses += newClientClasses;
                  newClientClasses = 0;
                });
              },
              child: Text('Refill the classes'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddNewClientDialog extends StatefulWidget {
  final Function(int) onRefill;

  AddNewClientDialog({required this.onRefill});

  @override
  _AddNewClientDialogState createState() => _AddNewClientDialogState();
}

class _AddNewClientDialogState extends State<AddNewClientDialog> {
  int newClientClasses = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add New Client'),
      content: TextField(
        keyboardType: TextInputType.number,
        onChanged: (value) {
          setState(() {
            newClientClasses = int.parse(value);
          });
        },
        decoration: InputDecoration(
          hintText: 'Enter new client classes',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            widget.onRefill(newClientClasses);
            Navigator.of(context).pop();
          },
          child: Text('Refill'),
        ),
      ],
    );
  }
}
