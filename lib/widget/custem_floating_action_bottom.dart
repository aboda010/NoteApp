import 'package:flutter/material.dart';

import 'add_note_bottom_sheet.dart';

class CustemFloatingActionBottom extends StatelessWidget {
  const CustemFloatingActionBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff56EBD4),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
          backgroundColor: const Color(0xff303030),
          context: context,
          builder: (context) {
            return const AddNoteBottomSheet();
          },
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
