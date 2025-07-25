import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(text: 'Notes', icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
