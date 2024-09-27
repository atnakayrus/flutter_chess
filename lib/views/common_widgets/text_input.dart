import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final TextEditingController controller;
  final bool isDisabled;
  final bool isExpandable;
  final bool isPassword;
  final double width;
  final double height;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? keyboardType;
  const TextInput({
    super.key,
    required this.controller,
    required this.width,
    required this.height,
    this.keyboardType,
    this.hintText,
    this.helperText,
    this.labelText,
    this.isDisabled = false,
    this.isExpandable = false,
    this.isPassword = false,
  });
  const TextInput.fullWidth(
      {super.key,
      required this.controller,
      this.keyboardType,
      this.hintText,
      this.helperText,
      this.labelText,
      this.isDisabled = false,
      this.isExpandable = false,
      this.isPassword = false})
      : height = 50,
        width = double.infinity;
  const TextInput.halfWidth(
      {super.key,
      required this.controller,
      this.keyboardType,
      this.hintText,
      this.helperText,
      this.labelText,
      this.isDisabled = false,
      this.isExpandable = false,
      this.isPassword = false})
      : height = 50,
        width = 240;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        readOnly: widget.isDisabled,
        maxLines: widget.isExpandable ? 999 : 1,
        expands: widget.isExpandable,
        obscureText: !(show || !widget.isPassword),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          hintText: widget.hintText,
          labelText: widget.labelText,
          helperText: widget.helperText,
          contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 15),
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      show = !show;
                    });
                  },
                  child: Icon(show
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                )
              : null,
        ),
      ),
    );
  }
}
