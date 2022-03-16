import 'package:flutter/material.dart';

class PaddedText extends StatelessWidget {
  const PaddedText({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(title!),
    );
  }
}
