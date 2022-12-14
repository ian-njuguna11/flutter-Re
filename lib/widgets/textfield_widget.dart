import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rest/colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {

  final TextEditingController textController;
  final String hintText;
  final double borderRadius;
  final int? maxline;

  const TextFieldWidget({Key? key, required this.textController, required this.hintText, required this.borderRadius, this.maxline = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxline,
      controller: textController,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textHolder,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1
              )
          )
        // border: BorderRadius.circular(30.0)
      ),
    );
  }
}
