import 'package:flutter/material.dart';

class CustomTextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool isPass;
  final TextInputType textInputType;
  //final Icon preIcon;
  //final Widget? suffixicon;
  const CustomTextFieldInput({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    //this.suffixicon,
    this.isPass = false,
    required this.textInputType,
    //this.preIcon = const Icon(Icons.email),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(8),
    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        border: inputBorder,
        focusedBorder: inputBorder,
        hintText: hintText,
        // suffixIcon: suffixicon,
        enabledBorder: inputBorder,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: const Color(0xFFF5F5FA),
        //prefixIcon: preIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
