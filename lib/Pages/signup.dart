import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  Function get submitHandler => null;

  Function get sendOtp => null;
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: signup(submitHandler, sendOtp),
    );
  }
}

// ignore: camel_case_types
class signup extends StatefulWidget {

  final Function submitHandler;
  final Function sendOtp;
  signup(this.submitHandler, this.sendOtp);

  @override
  _signupState createState() => _signupState();
}

// ignore: camel_case_types
class _signupState extends State<signup> {

  String mobno;
  String username;
  String finalmobno="XXXX", finalusername="abcd";

  void _setText() {
    setState(() {
          finalmobno = mobno;
          finalusername = username;
        });
        widget.submitHandler(finalmobno, finalusername);
        widget.sendOtp(finalmobno);
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
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/marqlogo.jpeg'),
                    radius: 80,
                    foregroundColor: Colors.white,
                  ),
                ),

                SizedBox(height: 30),
                Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container( height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(34)),
                    color: Colors.white,
                    border: Border.all(width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 10, 0),
                    child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.black54,
                            size: 35,
                          ),
                          SizedBox(width: 70),
                          ConstrainedBox(
                            constraints: BoxConstraints(minWidth: 20),
                            child: IntrinsicWidth(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText:'USERNAME',
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                onChanged: (value) => username = value,
                                // keyboardType: TextInputType.name,
                                // maxLength: 20,
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container( height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(43)),
                    color: Colors.white,
                    border: Border.all(width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 10, 0),
                    child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.call_outlined,
                            color: Colors.black54,
                            size: 35,
                          ),
                          SizedBox(width: 51),
                          ConstrainedBox(
                            constraints: BoxConstraints(minWidth: 20),
                            child: IntrinsicWidth(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'MOBILE NUMBER',
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                onChanged: (value) => mobno = value,

                                keyboardType: TextInputType.number,
                                // maxLength: 10,
                              ),
                              // child: TextFormField(
                              //     controller: widget._phoneNumberController(),
                              //     decoration: const InputDecoration(labelText: 'Phone number (+xx xxx-xxx-xxxx)'),
                              //   ),
                                
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(43)),
                //     color: Colors.white,
                //     border: Border.all(width: 2),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(20, 3, 10, 0),
                //     child: Row(
                //         children: <Widget>[
                //           Icon(
                //             Icons.vpn_key_outlined,
                //             color: Colors.black54,
                //             size: 35,
                //           ),
                //           SizedBox(width: 71),
                //           ConstrainedBox(
                //             constraints: BoxConstraints(minWidth: 20),
                //             child: IntrinsicWidth(
                //               child: TextField(
                //                 decoration: InputDecoration(
                //                   hintText:'VERIFY OTP',
                //                   hintStyle:TextStyle(
                //                     color: Colors.black54,
                //                     fontSize: 17,
                //                     fontWeight: FontWeight.normal,
                //                   ),
                //                 ),
                //                 keyboardType: TextInputType.number,
                //                 maxLength: 6,
                //               ),
                //             ),
                //           ),
                //         ]
                //     ),
                //   ),
                // ),
                SizedBox(height: 10),
                Center(
                  child: Container(
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

                                Navigator.pushNamed(context,'/otppage');
                              },
                            ),
                          ]
                      ),
                    ),
                    width: 180.0,
                  ),
                ),
                SizedBox(height:10),
                Center(
                 child: Text(
                   'Have an account?',
                   style:TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                ),
                SizedBox(height: 5),
                Center(
                  child: FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context,'/login');
                    },
                    icon: Icon(
                      Icons.login_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                          'login',
                          // finalmobno,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        letterSpacing:2
                      ),
                    ),

                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
