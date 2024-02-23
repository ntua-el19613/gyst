import 'package:flutter/material.dart';
import 'package:gyst/menu_page.dart';
import 'package:gyst/templates/quick_notes/add_form_notes.dart';

class Qnotes extends StatelessWidget {
  Qnotes({Key? key, required this.noteName}) : super(key: key);

  String noteName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Notes",
            style: TextStyle(
                color: Colors.black,
        )),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => const MenuPage()));
        },
        ),
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.note_alt_outlined),
              title: Text(noteName),
            ),
            const ListTile(
              leading: Icon(Icons.note_alt_outlined),
              title: Text('Feed Nemo at 19:00'),
            ),
            const ListTile(
              leading: Icon(Icons.note_alt_outlined),
              title: Text('Meeting with Kat at noon'),
            ),
            const ListTile(
              leading: Icon(Icons.note_alt_outlined),
              title: Text('Get birthday present for Mom'),
            ),
            const ListTile(
              leading: Icon(Icons.note_alt_outlined),
              title: Text('Finish flutter project on time'),
            ),
            const ListTile(
              leading: Icon(Icons.note_alt_outlined),
              title: Text('Prepare for the exam'),
            ),
            const ListTile(
              leading: Icon(Icons.note_alt_outlined),
              title: Text('Remember to lock the back door'),
            ),
            const ListTile(
              leading: Icon(Icons.note_alt_outlined),
              title: Text('Catch the flight to South Korea at 17:00'),
            ),
          ],
        ),
      ),
    );
  }
}