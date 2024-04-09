import 'package:flutter/material.dart';

class TextFieldTile extends StatelessWidget {
  final String textFieldHint;
  final TextEditingController textEditController;
  const TextFieldTile({
    required this.textFieldHint,
    required this.textEditController,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 47),
      child: TextField(
        controller: textEditController,
        decoration: InputDecoration(
          hintText: textFieldHint,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey
            ),
          ),
          enabled: true,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}