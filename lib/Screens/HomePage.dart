import 'package:flutter/material.dart';
import 'package:notes_app/widgets/AddNotes.dart';

import 'package:notes_app/widgets/HomeWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.tealAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNotes();
              });
        },
        child: Icon(
          color: Colors.white,
          Icons.add,
        ),
      ),
      body: HomeWidget(),
    );
  }
}
