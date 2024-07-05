import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/note_cubit/cubit/note_cubit.dart';
import '../widget/custem_app_bar.dart';
import '../widget/custem_floating_action_bottom.dart';
import '../widget/notes_list_view.dart';

class NotseView extends StatefulWidget {
  const NotseView({super.key});

  @override
  State<NotseView> createState() => _NotseViewState();
}

class _NotseViewState extends State<NotseView> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetichAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff303030),
      floatingActionButton: const CustemFloatingActionBottom(),
      appBar: AppBar(
        backgroundColor: const Color(0xff303030),
        title: const CustemAppBar(
          text: 'Notes',
          icon: Icons.search,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: NotesListView(),
      ),
    );
  }
}
