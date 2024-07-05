import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/model/note_model.dart';

import '../../../constent.dart';


part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

List<NoteModel> ?notes;
  fetichAllNotes ()async{ 

      var noteBox = Hive.box<NoteModel>(kNoteBox);
   notes =noteBox.values.toList();
   emit(NoteSuccess());
    }
  }

