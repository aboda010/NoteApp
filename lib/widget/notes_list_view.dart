import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/note_cubit/cubit/note_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes!;

        return ListView.builder(
          itemBuilder: (context, index) {
            return  NotesItem(note:notes[index]);
          },
          itemCount: notes.length,
        );
      },
    );
  }
}
