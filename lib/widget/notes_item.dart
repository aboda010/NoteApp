import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/edit_notes_view.dart';


import 'custem_icon_delete_and_show_dialog.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditNotesView(
              note: note,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 29),
                  child: Text(
                    note.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 45),
                  child: Text(
                    note.subTitle,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: CustemIconDeleteAndShowDialog(note: note),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 255, bottom: 19),
                child: Text(
                  note.date,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}