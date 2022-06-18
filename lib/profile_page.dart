import 'package:flutter/material.dart';
import 'package:studyplanner/Helper.dart';
import 'theme.dart';

class Userpage  extends StatelessWidget {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        actions: [
          IconButton(onPressed: (){
            AuthService authService = AuthService();
            authService.LogOutUser(context);
          }, icon: Icon(Icons.logout))
        ],
      ),
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Profile",
                style: TextStyle(
                    color: AquaColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset('img/user.png',
                width: 140,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Ryan fahreza",
                style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 224,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color: AquaColor,
                  onPressed: (){
                    showModalBottomSheet(
                      context: context,
                      builder: (context){
                        return Container(
                          height: 290,
                          padding: EdgeInsets.symmetric(
                            vertical: 50,
                          ),
                          color: BackgroundColor,
                          child: Column(
                            children: [
                              Text(
                                "upload photo",
                                style:TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ) ,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text("pastikan format photo benar, \n hanya bertipe jpg, png,..",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 30,
                              ),
                              Container(
                                width: 224,
                                height: 50,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(18),
                                  ),
                                  color: AquaColor,
                                  onPressed:(){},
                                  child: Text(
                                    "Upload",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Upload Profile", style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}