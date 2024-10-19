import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomAppBar.dart';
import 'package:notes_app/widgets/Notes.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CustomAppBar(
            text: 'Notes',
            icon: Icon(Icons.search),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(5),
                  itemBuilder: (context, index) {
                    return const Notes(
                      color: Colors.lightBlueAccent,
                    );
                  })),
        ],
      ),
    );
  }
}
