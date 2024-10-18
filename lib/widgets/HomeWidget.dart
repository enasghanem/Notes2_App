import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Notes.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Notes',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              const Spacer(),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    )),
              )
            ],
          ),
          SizedBox(
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
