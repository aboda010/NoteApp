import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constent.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/simble_bloc_observe.dart';
import 'package:note_app/views/notse_view.dart';
import 'cubit/note_cubit/cubit/note_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = SimbleBlocObserver();

  await Hive.openBox<NoteModel>(kNoteBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>NoteCubit())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NotseView(),
      ),
    );
  }
}