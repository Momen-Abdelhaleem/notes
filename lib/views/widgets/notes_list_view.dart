import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.only(top: 20),
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => NoteItem(),
    );
  }
}
