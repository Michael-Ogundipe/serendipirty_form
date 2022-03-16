// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:serendipirty_form/constants.dart';
import 'package:serendipirty_form/widgets/form_header_widget.dart';
import 'package:serendipirty_form/widgets/padded_text.dart';
import 'package:serendipirty_form/widgets/table_container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/jsonformatter.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["results"];
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(_items[0]["createdOn"], style: Constants.kBoldText),
                SizedBox(
                  height: 15,
                ),
                FormHeader(
                  title1: "Mohammad Assad",
                  title2: "EntryState",
                ),

                TableContainer(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("FIELD", style: Constants.kLightTextTextStyle,),
                          PaddedText(title:"deleted"),
                          PaddedText(title:"entryId"),
                          PaddedText(title:"statusId"),
                          PaddedText(title:"createdOn"),
                          PaddedText(title:"deletedBy"),
                          PaddedText(title:"deletedOn"),
                          PaddedText(title:"updatedOn"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("PREVIOUS", style: Constants.kLightTextTextStyle,),
                          PaddedText(title: _items[0]["changedFields"]["deleted"]["old"].toString(),),
                          PaddedText(title: _items[0]["changedFields"]["entryId"]["old"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["statusId"]["old"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["createdOn"]["old"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["deletedBy"]["old"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["deletedOn"]["old"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["updatedOn"]["old"].toString()),
                        ],
                      ),
                      Column(
                        children: [
                          Text("UPDATED TO", style: Constants.kLightTextTextStyle,),
                          PaddedText(title: _items[0]["changedFields"]["deleted"]["new"].toString(),),
                          PaddedText(title: _items[0]["changedFields"]["entryId"]["new"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["statusId"]["new"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["createdOn"]["new"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["deletedBy"]["new"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["deletedOn"]["new"].toString()),
                          PaddedText(title: _items[0]["changedFields"]["updatedOn"]["new"].toString()),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(_items[0]["createdOn"],style: Constants.kBoldText),
                SizedBox(
                  height: 15,
                ),

                FormHeader(
                  title1: "Mohammad Assad ",
                  title2: "FormEntrySignature",
                ),

                TableContainer(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text("FIELD", style: Constants.kLightTextTextStyle,),
                            PaddedText(title: "createdOn",),
                            PaddedText(title: "fieldName",),
                            PaddedText(title: "isDeleted",),
                            PaddedText(title: "signatory",),
                            PaddedText(title: "updatedOn",),
                            PaddedText(title: "formEntryId",),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("PREVIOUS", style: Constants.kLightTextTextStyle,),
                            PaddedText(title: _items[1]["changedFields"]["createdOn"]["old"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["fieldName"]["old"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["isDeleted"]["old"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["signatory"]["old"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["updatedOn"]["old"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["formEntryId"]["old"].toString()),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("UPDATED TO", style: Constants.kLightTextTextStyle,),
                            PaddedText(title: _items[1]["changedFields"]["createdOn"]["new"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["fieldName"]["new"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["isDeleted"]["new"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["signatory"]["new"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["updatedOn"]["new"].toString()),
                            PaddedText(title: _items[1]["changedFields"]["formEntryId"]["new"].toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Text(_items[0]["createdOn"], style: Constants.kBoldText),
                SizedBox(
                  height: 15,
                ),

                FormHeader(
                  title1: "Mohammad Assad",
                  title2: "FormEntry",
                ),

               TableContainer(
                 child: Table(
                   children: [
                     TableRow(
                         children: [
                           Text("FIELD", style: Constants.kLightTextTextStyle,),
                           Text("PREVIOUS", style: Constants.kLightTextTextStyle,),
                           Text("UPDATED TO", style: Constants.kLightTextTextStyle,),
                         ]
                     ),
                     TableRow(
                         children: [
                           Text("content"),
                           Text(_items[2]["changedFields"]["content"]["old"].toString()),
                           Text(_items[2]["changedFields"]["content"]["new"].toString()),
                         ]
                     ),

                   ],
                 ),
               )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

