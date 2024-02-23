import 'package:flutter/material.dart';
import 'package:gyst/templates/study.dart';

class StudyToday extends StatelessWidget {
  StudyToday({Key? key, required this.taskName}) : super(key: key);

  String taskName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stuff to Study Today",
            style: TextStyle(
                color: Colors.black,
        )),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const StudyPlannerPage()));
        },
        ),
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.book),
              title: Text(taskName),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('English Project due tommorow'),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Finish homework for Wednesday'),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Geography Assignment'),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Revise material for HCI class'),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Submit project tonight'),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Prepare material for Tuesday'),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Textbook page42, exercise 5'),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Finish reading the book until Friday'),
            ),
          ],
        ),
      ),
    );
  }
}