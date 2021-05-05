import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
                  image: AssetImage('assets/signupback.jpg'),
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
                        'LOGIN',
                        style:TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    SizedBox(height:30),
                    Container( height: 55,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(43)),
                        color: Colors.white,
                        border:Border.all(width:2),
                      ),
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(20,8, 10, 0),
                        child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.call_outlined,
                                color:Colors.black54,
                                size: 35,
                              ),
                              SizedBox(width:70),
                              ConstrainedBox(constraints: BoxConstraints(minWidth: 20),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'MOBILE NUMBER',
                                      hintStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),

                                    keyboardType: TextInputType.number,
                                    maxLength: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container( height: 55,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(43)),
                        color: Colors.white,
                        border:Border.all(width:2),
                      ),
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(20,8, 10, 0),
                        child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.lock_outline,
                                color:Colors.black54,
                                size: 35,
                              ),
                              SizedBox(width:70),
                              ConstrainedBox(
                                constraints: BoxConstraints(minWidth: 20),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText:'ENTER OTP',
                                      hintStyle:TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    keyboardType: TextInputType.number,
                                    maxLength: 6,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Container( height: 60,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(43)),
                          color: Colors.grey,
                          border:Border.all(width:2),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.fromLTRB(28.0, 3.0, 10.0, 0.0),
                          child: Row(
                              children: <Widget>[
                                FlatButton(
                                  textColor: Colors.white,
                                  child: Text(
                                    'LOGIN',
                                    style:TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.pushNamed(context,'/otppage');
                                  },
                                ),
                                Icon(
                                  Icons.login_outlined,
                                  color:Colors.black54,
                                  size: 35,
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
