import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_bottom.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  //بستخدمة عشان لو دخل حاجة غلط او حاجة انا مش عاوزها
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(
            hint: 'title',
            validator: (value) {
              title = value;
              if (value?.isEmpty ?? true) {
                return ' هذا الحقل مطلوب';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 20),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
            validator: (value) {
              subtitle = value;
              if (value?.isEmpty ?? true) {
                return 'this field required';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 20),
          CustomBottom(),
        ],
      ),
    );
  }
}
