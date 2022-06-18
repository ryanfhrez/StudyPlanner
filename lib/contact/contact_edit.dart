import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studyplanner/theme.dart';
import 'package:studyplanner/widgets/input_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ContactEditScreen extends StatefulWidget {
  const ContactEditScreen({Key? key}) : super(key: key);

  @override
  State<ContactEditScreen> createState() => _ContactEditScreenState();
}

class _ContactEditScreenState extends State<ContactEditScreen> {
  String date = DateTime.now().toString();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mainController = TextEditingController();
  int color_id = Random().nextInt(AppStyle.cardColor.length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Add a New Contact", style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Myinputfield(
              title: "Nama",
              hint: "masukan nama",
              controller: _nameController,
            ),
            SizedBox(
              height: 8,
            ),
            Myinputfield(
              controller: _mainController,
              title: "No Telepon",
              hint: "masukan nomor",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AquaColor,
        onPressed: ()async{
          FirebaseFirestore.instance.collection("contact").add({
            "nama":_nameController.text,
            "no_telepon":_mainController.text,
            "color_id":color_id
          }).then((value) {
            print(value.id);
            Navigator.pop(context);
          }).catchError((error)=>print("Failed to add new Contact due to $error"));
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
