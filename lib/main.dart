import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Models/NotesModels.dart';
import 'package:notes_app/Screens/HomePage.dart';
import 'package:notes_app/helpers/Constants.dart';

void main() async {
  //********* */
  // init  for Hive
  await Hive.initFlutter();
  await Hive.openBox(knotes);
  Hive.registerAdapter(KNotesAdapter);
  //****** */
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
