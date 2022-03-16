// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TableContainer extends StatelessWidget {
  const TableContainer({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: child,
      ),
    );
  }
}
