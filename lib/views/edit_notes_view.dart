import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/note_cubit/cubit/note_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/custem_app_bar.dart';
import 'package:note_app/widget/custem_text_field.dart';
import 'package:note_app/widget/edit_color_list.dart';
class EditNotesView extends StatefulWidget {
  const EditNotesView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff303030),
      appBar: AppBar(
          elevation: .2,
          backgroundColor: const Color(0xff303030),
          title: CustemAppBar(
            onPressed: () {
              BlocProvider.of<NoteCubit>(context).fetichAllNotes();
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
            },
            icon: Icons.check,
            text: 'Edit Note',
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            CustemTextField(
                onChanged: (value) {
                  title = value;
                },
                hintText: widget.note.title),
            const SizedBox(
              height: 15,
            ),
            CustemTextField(
              onChanged: (value) {
                subTitle = value;
              },
              hintText: widget.note.subTitle,
              maxLines: 5,
            ),
            const SizedBox(height: 25),
            EditColorList(note: widget.note)
          ],
        ),
      ),
    );
  }
}
