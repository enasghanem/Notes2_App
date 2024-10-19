import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/helpers/Constants.dart';

part 'NotesModels.g.dart'; // تأكد من أن الامتداد صحيح

@HiveType(typeId: 0) // typeAdapter
class NotesModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String subtitle;

  @HiveField(2)
  final String date;

  @HiveField(3)
  final int coloe; // قد ترغب في تصحيح اسم هذا المتغير إلى "color"

  NotesModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.coloe, // تأكد من تعديل الاسم هنا أيضًا إذا صححته
  });
}
