

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/note_cubit/cubit/note_cubit.dart';
import '../model/note_model.dart';

class CustemIconDeleteAndShowDialog extends StatelessWidget {
  const CustemIconDeleteAndShowDialog({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                title: const Text('Alert Title'),
                content: const Text(
                    'Do you wont to delet this note !'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      note.delete();
                      BlocProvider.of<NoteCubit>(context)
                          .fetichAllNotes();
                    },
                    child: Card(
                      clipBehavior: Clip.none,
                      elevation: 25,
                      child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(25)),
                          child: const Center(
                              child: Text(
                            'Yes',
                            style: TextStyle(color: Colors.blue),
                          ))),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Card(
                      clipBehavior: Clip.none,
                      elevation: 25,
                      child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(25)),
                          child: const Center(
                              child: Text(
                            'No',
                            style: TextStyle(color: Colors.blue),
                          ))),
                    ),
                  ),
                ],
              );
            },
          );
        },
        icon: const Icon(
          Icons.delete,
          size: 45,
          color: Colors.black,
        ));
  }
}
