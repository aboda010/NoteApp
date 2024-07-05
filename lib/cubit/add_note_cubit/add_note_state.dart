import 'package:flutter/material.dart';

class AddNoteState {}

@immutable
class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {

  
}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMessagre;
  AddNoteFailure(this.errMessagre);
}
