import 'dart:async';

import 'package:flutter/material.dart';
class additional extends StatefulWidget {

  final Function submitHandler;
  additional(this.submitHandler);


  @override
  _additionalState createState() => _additionalState();
}

class _additionalState extends State<additional> {

  String comments;
  String username;
  String finalcomments="XXXX";

  void _setText() {
    setState(() {
          finalcomments = comments;
          
        });
        widget.submitHandler(finalcomments);
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
        body: Center(
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('assets/regback.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
              child:Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 150.0, 30.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[

                    Center(
                      child: Text(
                        'REGISTRATION FORM',
                        style:TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    SizedBox(height:30),
                    // Container(  height: 55,
                    //   decoration:BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(43)),
                    //     color: Colors.white,
                    //     border:Border.all(width:2),
                    //   ),
                    //   child:Padding(
                    //     padding: const EdgeInsets.fromLTRB(20,8, 10, 0),
                    //     child: Row(
                    //         children: <Widget>[
                    //           SizedBox(width:70),
                    //           ConstrainedBox(constraints: BoxConstraints(minWidth: 20),
                    //             child: IntrinsicWidth(
                    //               child: TextField(
                    //                 decoration: InputDecoration(
                    //                   hintText: 'SHOP NAME',
                    //                   hintStyle: TextStyle(
                    //                     color: Colors.black54,
                    //                     fontSize: 17,
                    //                     fontWeight: FontWeight.normal,
                    //                   ),
                    //                 ),
                    //
                    //                 keyboardType: TextInputType.number,
                    //                 //maxLength: 10,
                    //               ),
                    //             ),
                    //           ),
                    //         ]
                    //     ),
                    //   ),
                    // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 100.0,
                    margin: EdgeInsets.all(20),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText: "COMMENTS",
                    fillColor: Colors.grey[300],
                    filled: true,
                    ),
                    onChanged: (value) => comments = value,
                      maxLines: 20,
                    ),
                    ),
                  ),
                    SizedBox(height: 30),
                    Container(  height: 55,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(43)),
                        color: Colors.white,
                        border:Border.all(width:2),
                      ),
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(20,8, 10, 0),
                        child: Row(
                            children: <Widget>[
                              SizedBox(width:51),
                              ConstrainedBox(
                                constraints: BoxConstraints(minWidth: 20),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText:'TAGS',
                                      hintStyle:TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    keyboardType: TextInputType.number,
                                    //maxLength: 15,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    SizedBox(height: 30),
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
                                   // Navigator.pushNamed(context,'/otppage');
                                  },
                                ),
                              ]
                          ),
                        ),
                        width: 180.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
