// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
class otppage extends StatefulWidget {

  final Function verifyOtp;
  otppage(this.verifyOtp);

  @override
  _otppageState createState() => _otppageState();
}
class _otppageState extends State<otppage> {
//   Future <bool> loginUser(String phone) async{
//     FirebaseAuth _auth=FirebaseAuth.instance;
//     _auth.verifyPhoneNumber(
//         phoneNumber: phone,
//         timeout: Duration(seconds:60),
//         verificationCompleted: (AuthCredential credential) async {
//           Navigator.of(context).pop();
//           UserCredential result= await _auth.signInWithCredential(credential):
//           User user = result.user;
//
//           if(user != null){
//           Navigator.push(context, MaterialPageRoute(
//           builder: (context) => signup(user: user,)
//           ));
//           }else{
//           print("Error");
//           }
//         },
//         verificationFailed: null,
//         codeSent: codeSent,
//         codeAutoRetrievalTimeout: codeAutoRetrievalTimeout),
// 
  int enteredOtp;
  int finalenteredOtp;
  bool toRender = true;

  void _setText() {
    setState(() {
          finalenteredOtp = enteredOtp;
        });
        toRender = widget.verifyOtp(finalenteredOtp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Container(
            decoration:BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(43)),
              color: Colors.grey,
              border:Border.all(
                  color: Colors.grey,
                  width:2),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0,7.0,10.0,7.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.work,
                      color: Colors.white54,
                    ),
                    Text(' figma.com',
                      style: TextStyle(
                          color:Colors.white54,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ]
              ),
            )
        ),
        actions:<Widget> [
          IconButton(
            icon:Icon(
              Icons.backup,
              color: Colors.white54,
            ),
            onPressed: (){
            },
          )
        ],
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/signupback.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 60),
                Center(
                  child: Text(
                    'OTP VERIFICATION',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(43)),
                    color: Colors.white,
                    border: Border.all(width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 3, 10, 0),
                    child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.vpn_key_outlined,
                            color: Colors.black54,
                            size: 35,
                          ),
                          SizedBox(width: 71),
                          ConstrainedBox(
                            constraints: BoxConstraints(minWidth: 20),
                            child: IntrinsicWidth(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText:'VERIFY OTP',
                                  hintStyle:TextStyle(
                                    color: Colors.black54,
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                onChanged: (value) => enteredOtp = int.parse(value),
                                keyboardType: TextInputType.number,
                                maxLength: 6,
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Container(height: 55,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(43)),
                      color: Colors.grey,
                      border:Border.all(width:2),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 3.0, 10.0, 0.0),
                      child: Row(
                          children: <Widget>[
                            FlatButton(
                              textColor: Colors.white,
                              child: Center(
                                child: Text(
                                  'SUBMIT',
                                  style:TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              onPressed: (){
                                _setText();
                                toRender ? 
                                Navigator.pushNamed(context,'/owner') : Text('Your OTP Entered is Wrong');
                              },
                            ),
                          ]
                      ),
                    ),
                    width: 180.0,
                  ),
                ),
                SizedBox(height:10),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
