import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
