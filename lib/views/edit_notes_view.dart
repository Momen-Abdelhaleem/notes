import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(text: 'Edit Notes', icon: Icons.check),
          SizedBox(height: 40),
          CustomTextField(hint: 'Notes'),
          SizedBox(height: 50),
          CustomTextField(hint: 'Content', maxLines: 8),
        ],
      ),
    );
  }
}
