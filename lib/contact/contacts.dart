import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyplanner/contact/contact_edit.dart';
import 'package:studyplanner/contact/contact_reader.dart';
import 'package:studyplanner/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:studyplanner/widgets/note_card.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Text(
            "Contact",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(13)
            ),
            Center(
              child: Text(
                  'My Contacts',
                style: GoogleFonts.poppins(
                  color: AquaColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance.collection("contact").snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                    if(snapshot.connectionState == ConnectionState.waiting){
                    return Center(
                    child: CircularProgressIndicator(),
                    );
                    }
                      if(snapshot.hasData){
                        return GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                          children: snapshot.data!.docs
                              .map((note) => noteCard((){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactReaderScreen(note),
                            ));
                          },note))
                              .toList(),
                        );
                      }
                      return Text("there no contact",style: GoogleFonts.poppins(color: Colors.white),
                      );
                  },
              ),
            )
          ],
        ),
          floatingActionButton:FloatingActionButton.extended(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactEditScreen()));
              },
            backgroundColor: AquaColor,
              icon: Icon(Icons.add),
              label: Text("Contact"),
          ) ,
    );
  }
}
