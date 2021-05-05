import 'package:flutter/material.dart';
class shop extends StatefulWidget {

  final Function submitHandler;
  shop(this.submitHandler);

  @override
  _shopState createState() => _shopState();
}

class _shopState extends State<shop> {

  String shopname;
  String prodcat;
  String subcat;
  String finalshopname="XXXX", finalprodcat="XXXX", finalsubcat="XXXX";

  void _setText() {
    setState(() {
          finalshopname = shopname;
          finalprodcat = prodcat;
          finalsubcat = subcat;
        });
        widget.submitHandler(finalshopname, finalprodcat, finalsubcat);
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
                              SizedBox(width:70),
                              ConstrainedBox(constraints: BoxConstraints(minWidth: 20),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'SHOP NAME',
                                      hintStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    onChanged: (value) => shopname = value,
                                    keyboardType: TextInputType.number,
                                    //maxLength: 10,
                                  ),
                                ),
                              ),
                            ]
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
                                      hintText:'PRODUCT CATEGORY',
                                      hintStyle:TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    onChanged: (value) => prodcat = value,
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
                              SizedBox(width:70),
                              ConstrainedBox(constraints: BoxConstraints(minWidth: 20, maxHeight: 60),
                                child: IntrinsicWidth(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'SUB CATEGORY',
                                      hintStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    onChanged: (value) => subcat = value,
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
                      child: Container( width:305,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(75)),
                            color: Colors.grey,
                            border:Border.all(width:2),
                          ),
                          child:Padding(
                            padding: const EdgeInsets.fromLTRB(28.0, 3.0, 50.0, 0.0),
                            child: Row(
                                children: <Widget>[
                                new Align(
                                     alignment: FractionalOffset.bottomLeft,
                                 child: FlatButton(
                                    textColor: Colors.white,
                                    child: Text(
                                      'NEXT  >',
                                      style:TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    onPressed: (){
                                      _setText();
                                      Navigator.pushNamed(context,'/additional');
                                    },
                                  ),
                            ),
                                  // Icon(
                                  //   Icons.login_outlined,
                                  //   color:Colors.black54,
                                  //   size: 35,
                                  // ),
                                  SizedBox(width:35),
                                  new Align(
                                    alignment: FractionalOffset.bottomRight,
                                   child: FlatButton(
                                      textColor: Colors.white,
                                      child: Text(
                                        '>  PREV',
                                        style:TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.pushNamed(context,'/owner');
                                      },
                                    ),
                                  ),

                                ]
                            ),
                          ),
                          //width: 250.0,
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
