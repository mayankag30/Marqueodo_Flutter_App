library flutter_otp;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_otp/flutter_otp.dart';
import 'package:sms/sms.dart';
import 'dart:math';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:sms_autofill/sms_autofill.dart';

import 'Pages/signup.dart';
import 'Pages/login.dart';
import 'Pages/owner.dart';
import 'Pages/shop.dart';
import 'Pages/otppage.dart';
import 'Pages/additional.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This Widget is the root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  int _otp, _minOtpValue, _maxOtpValue; //Generated OTP

  void generateOtp([int min = 1000, int max = 9999]) {
    //Generates four digit OTP by default
    _minOtpValue = min;
    _maxOtpValue = max;
    _otp = _minOtpValue + Random().nextInt(_maxOtpValue - _minOtpValue);
  }
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // final TextEditingController _phoneNumberController = TextEditingController();
  // final TextEditingController _smsController = TextEditingController();
  // String _verificationId;
  // final SmsAutoFill _autoFill = SmsAutoFill();

  String mobno, username, ownerr, address, contactno, shopname, prodcat, subcat, comments;

  void _takeFromSignup(String mobno, String username) {
    try {
      this.mobno = mobno;
      this.username = username;
    } catch(e) {
      print(e);
    }
  }

  void _takeFromOwner(String ownerr, String address, String contactno) {
    try {
      this.ownerr = ownerr;
      this.address = address;
      this.contactno = contactno;
    } catch(e) {
      print(e);
    }
  }

  void _takeFromShop(String shopname, String prodcat, String subcat) {
    try {
      this.shopname = shopname;
      this.prodcat = prodcat;
      this.subcat = subcat;
    } catch(e) {
      print(e);
    }
  }

  void _takeFromAdditional(String comments) {
    try {
      this.comments = comments;
      _create();
    } catch(e) {
      print(e);
    }
  }

  void _create() async {
    try {
      await firestore.collection('users').doc(this.shopname).set({
        "OWNER": this.ownerr,
        "ADDRESS": this.address,
        "CONTACT NUMBER": this.contactno,
        'USERNAME': this.username,
        'Mobile Number': this.mobno,
        "SHOP NAME": this.shopname,
        "PRODUCT CATEGORY": this.prodcat,
        "SUB CATEGORY": this.subcat,
        "COMMENTS": this.comments,
      // print("MAYANK");
        // print(this.ownerr);
        // print(this.address);
        // print(this.contactno);
        // print(this.username);
        // print(this.mobno);
        // print(this.shopname);
        // print(this.prodcat);
        // print(this.subcat);
        // print(this.comments);
      });
    } catch(e) {
      print(e);
    } 
  }

  void sendOtp(String phoneNumber,[String messageText,int min = 1000,int max = 9999,String countryCode = '+91']) {
    //function parameter 'message' is optional.
    generateOtp(min, max);
    
    SmsSender sender = new SmsSender();
    String address = (countryCode ?? '+91') + phoneNumber; // +91 for INDIA. Change it according to use.

    sender.sendSms(new SmsMessage( address, 
    (messageText ?? 'Your OTP is : ') + _otp.toString()));

    print((messageText ?? 'Your OTP is : ') + _otp.toString());
  }

  bool resultChecker(int enteredOtp) {
    //To validate OTP
    bool isCorrect = enteredOtp == _otp;
    if(isCorrect) {
      print('Success');
    } else {
      print('Failure');
    }
    return isCorrect;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>signup(_takeFromSignup, sendOtp),
        //'/signup':(context)=>signup(),
        '/login':(context)=>login(),
        '/owner':(context)=>owner(_takeFromOwner),
        '/shop':(context)=>shop(_takeFromShop),
        '/otppage':(context)=>otppage(resultChecker),
        '/additional':(context)=>additional(_takeFromAdditional),
      },
    );
  }

  

  // void _read() async {
  //   DocumentSnapshot documentSnapshot;
  //   try {
  //     documentSnapshot = await firestore.collection('users').doc('testUser').get();
  //     print(documentSnapshot.data);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // void _update() async {
  //   try {
  //     firestore.collection('users').doc('testUser').update({
  //       'firstName': 'Rajveer',
  //     });
  //   } catch(e) {
  //     print(e);
  //   }
  // }

  // void _delete() async {
  //   try {
  //     firestore.collection('users').doc('testUser').delete();
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Flutter CRUD with Firebase"),
  //     ),
  //     body: Center(
  //       child: Column(mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         RaisedButton(
  //           child: Text("Create"),
  //           onPressed: _create,
  //           ),
  //         RaisedButton(
  //           child: Text("Read"),
  //           onPressed: _read,
  //           ),
  //         RaisedButton(
  //           child: Text("Update"),
  //           onPressed: _update,
  //           ),
  //         RaisedButton(
  //           child: Text("Delete"),
  //           onPressed: _delete,
  //           ),
  //       ]),
  //     )
  //   );
  // }
}