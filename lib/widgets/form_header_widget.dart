// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({
    Key? key,
    this.title1,
    this.title2,
  }) : super(key: key);
  final String? title1;
  final String? title2;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.all(15),
        child: RichText(
          text: TextSpan(
            text: title1,
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: " create ", style: DefaultTextStyle.of(context).style),
              TextSpan(
                  text: title2,
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
