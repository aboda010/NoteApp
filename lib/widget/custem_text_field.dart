import 'package:flutter/material.dart';

import '../constent.dart';

class CustemTextField extends StatelessWidget {
 const  CustemTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved,this.onChanged});
  final String hintText;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'filed is requred';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(25),
          hintStyle: const TextStyle(color: kPrimaryColor, fontSize: 25),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: kPrimaryColor)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
