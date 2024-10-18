import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Notes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Notes',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    )),
              )
            ],
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Notes(
              color: Colors.lightBlueAccent,
            );
          })),
        ],
      ),
    ));
  }
}
