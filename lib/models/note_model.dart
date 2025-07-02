import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}
// hive_flutter   بتخليك تستعملها في فلاتر لان hive من الباكدج اللي اسمها extention هي عبارة عن 
// باكدج بتاعة دارت hive اصلا 
// build runner للكود generate  و بستعملها عشان تعمل  dev_dependencies بكتبها جوا ال 
//hive key & value بتخزن الكود على هيئة 
//عشان اخزن فية البيانات و ممكن انشئ اكتر من واحد عادي box بننشئ   hive  في 
//,لازم اعمل التالي object و عشان اخزن جواها  premitive data type بتخزن  hive
//عشان يعمل الحتة دي hive generator  و كدة كدة احنا عاملين  type adapter بنشئ حاجة اسمها 
//hive object لحاجة اسمها  extend  يعمل  model  بخلي ال  
// و الارقام بتزيد مع كل متغير @hiveField(0) و بديلة رقم خاص بيه كدة unique field بعمل 
//flutter packages pub run build_runner build بكتب في التيرمنال 
