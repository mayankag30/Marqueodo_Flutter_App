import 'package:flutter/material.dart';
class owner extends StatefulWidget {
  
  final Function submitHandler;
  owner(this.submitHandler);

  @override
  _ownerState createState() => _ownerState();
}

class _ownerState extends State<owner> {

  String ownerr;
  String address;
  String contactno;
  String finalownerr="XXXX", finaladdress="XXXX", finalcontactno="XXXX";

  void _setText() {
    setState(() {
          finalownerr = ownerr;
          finaladdress = address;
          finalcontactno = contactno;
        });
        widget.submitHandler(finalownerr, finaladdress, finalcontactno);
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
                image: AssetImage('assets/redreg.jpg'),
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
                    Container(height: 55,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(43)),
                        color: Colors.white,
                        border:Border.all(width:2),
                      ),
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(20,3, 10, 0),
                        child: Row(
                            children: <Widget>[
                              SizedBox(width:70),
                              ConstrainedBox(constraints: BoxConstraints(minWidth: 20),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'OWNER NAME',
                                      hintStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    onChanged: (value) => ownerr = value,

                                    keyboardType: TextInputType.number,
                                   // maxLength: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(height: 55,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(43)),
                        color: Colors.white,
                        border:Border.all(width:2),
                      ),
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(20,3, 10, 0),
                        child: Row(
                            children: <Widget>[
                              SizedBox(width:70),
                              ConstrainedBox(
                                constraints: BoxConstraints(minWidth: 20),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText:'ADDRESS',
                                      hintStyle:TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    onChanged: (value) => address = value,
                                   keyboardType: TextInputType.number,
                                    //maxLength: 6,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(height: 55,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(43)),
                        color: Colors.white,
                        border:Border.all(width:2),
                      ),
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(20,3, 10, 0),
                        child: Row(
                            children: <Widget>[
                              SizedBox(width:70),
                              ConstrainedBox(constraints: BoxConstraints(minWidth: 20),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'CONTACT NUMBER',
                                      hintStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    onChanged: (value) => contactno = value,
                                    keyboardType: TextInputType.number,
                                   // maxLength: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Container(
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
                                    'NEXT  >',
                                    style:TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: (){
                                    _setText();
                                    Navigator.pushNamed(context,'/shop');
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
