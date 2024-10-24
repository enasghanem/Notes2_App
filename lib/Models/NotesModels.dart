import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'NotesModels.g.dart';

@HiveType(typeId: 0) // typeAdapter
class NotesModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String subtitle;

  @HiveField(2)
  final String date;

  @HiveField(3)
  final int color;

  NotesModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}
