import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note__form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}
