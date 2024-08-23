import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class EditNoteScreenBody extends StatelessWidget {
  const EditNoteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomTextField(
            hint: "Title",
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
