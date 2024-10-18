import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  const Notes({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
      //   margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              subtitle: Text(
                'Build Your Crear with Enas Ghanem',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 24,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  ))),
          Padding(
            padding: const EdgeInsets.only(left: 192),
            child: Text(
              'May 2025-1-15',
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          )
        ],
      ),
    );
  }
}