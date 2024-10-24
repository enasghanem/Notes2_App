import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Simple_block_observer.dart';
import 'package:notes_app/Screens/HomePage.dart';
import 'package:notes_app/helpers/Constants.dart';

void main() async {
  /**Flutter  تهيئة بيئة الـ 
   * بشكل كامل قبل البدء في تنفيذ أي كود آخر.
   * مثل التهيئة مع قواعد البيانات
   */
  WidgetsFlutterBinding.ensureInitialized();
  /**
   * بتهيئة 
   * Hive لاستخدامه في تطبيق Flutter. Hive 
   * 
   *، وتحدد المسار الذي سيتم فيه تخزين البيانات. 
   */
  await Hive.initFlutter();
  /**فتح "صندوق" (Box) في Hive
   * knotes هو اسم الصندوق
   * الصناديق هي وحدات تخزين البيانات الأساسية في Hive.
   */
  Bloc.observer = SimpleBlocObserver();
  //first registeradapter secon open Box important
  Hive.registerAdapter(KNotesAdapter);
  await Hive.openBox(knotes);

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
