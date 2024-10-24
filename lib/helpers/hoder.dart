// dependencies:
//   hive: ^2.0.0
//   hive_flutter: ^1.1.0

// dev_dependencies:
//   hive_generator: ^2.0.0
//   build_runner: ^2.0.0
/**
 *build_runnerمع    hive_generator استخدام حزمة
 *  لتوليد
 *  الأكواد الخاصة بـ TypeAdapter 

 */


/**

 * flutter packages pub run build_runner build
 * 
 * سيقوم هذا الأمر بتوليد ملف جديد يحتوي على
 *  ا  المطلوبTypeAdapter ال
 *  في الملف NotesModels.g.dart.

تسجيل الـ Adapter في مشروعك:

بعد توليد الكود، قم بتسجيل
 NotesModelAdapter 

 */
//create state using in emit
//create cubit
//create plovider  BlocProvider two requrired plovider,child
//plovider :[],child is the place ploivde the cubit

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<AddNotesCubit>(create: (context) {
//           return AddNotesCubit();
//         })
//       ],
//       child: MaterialApp(),
//     );
//   }
// }

//if(value?.isEmpty ?? true) 
//explain: if is aready empty 
//mean true return true and operate on blocks
//{}