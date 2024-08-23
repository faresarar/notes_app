import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(height: 16),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),

            /// don't use Spacer() in SingleChildScrollView() ,
            SizedBox(height: 16),

            CustomButton(),
            SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}
