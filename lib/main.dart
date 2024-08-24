import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants.dart';
import 'cubits/add_note_cubit/add_note_cubit.dart';
import 'models/note_model.dart';
import 'screens/notes_screen.dart';
import 'simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        title: 'Notes App',
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins",
        ),
        home: const NotesScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
