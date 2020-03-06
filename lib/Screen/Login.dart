import 'dart:ui';

import 'package:businesscard/Utility/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:businesscard/common/Constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtMobile = new TextEditingController();
  String fcmToken = "";

  showMsg(String msg, {String title = 'Business Card'}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new Text(msg),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Okay"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double heigh = MediaQuery.of(context).size.height;
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
            width: ResponsiveWidget.isSmallScreen(context)?MediaQuery.of(context).size.width:450,
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                        flex: 2,
                        child: ClipPath(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 0),
                            height: heigh > 550.0
                                ? MediaQuery.of(context).size.height / 2.6
                                : MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: new ExactAssetImage('images/bg.jpeg'),
                              ),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                              child: Container(
                                color: Color.fromRGBO(243, 101, 35, 1)
                                    .withOpacity(0.3),
                              ),
                            ),
                          ),
                          clipper: displayDateClipper(),
                        )),
                    Flexible(
                      flex: 2,
                      child: Container(
                          //color: Colors.deepOrange,
                          ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ClipPath(
                        child: Container(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                            child: Container(
                              color: Color.fromRGBO(243, 101, 35, 1)
                                  .withOpacity(0.1),
                            ),
                          ),
                        ),
                        clipper: bottomDateClipper(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 0),
                      ),
                    ),
                    Flexible(
                        flex: 2,
                        child: ClipPath(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: heigh * 0.08, left: 20, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        "Lets's get start",
                                        style: TextStyle(
                                          fontSize: 25,
                                          letterSpacing: 1,
                                          color: Color.fromRGBO(243, 101, 35, 1),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: heigh * 0.02)),
                                    TextFormField(
                                      controller: txtMobile,
                                      cursorColor: Theme.of(context).cursorColor,
                                      decoration: InputDecoration(
                                        counterText: "",
                                        //filled: true,
                                        hintText: 'Enter Mobile No',
                                        labelText: "Mobile No",
                                        prefixIcon: Icon(
                                          Icons.phone,
                                          color: Color.fromRGBO(243, 101, 35, 1),
                                        ),
                                      ),
                                      maxLength: 10,
                                      keyboardType: TextInputType.phone,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(top: heigh * 0.03),
                                      height: heigh > 550.0
                                          ? heigh * .062
                                          : heigh * .055,
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(30.0)),
                                        color: Color.fromRGBO(243, 101, 35, 1),
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(context, "/Dashboard");
                                        },
                                        child: Text(
                                          "Sign In",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: heigh * 0.02)),
                                    Center(
                                        child: Text(
                                      "Or",
                                      style: TextStyle(
                                          color: Color.fromRGBO(243, 101, 35, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    )),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(top: heigh * 0.013),
                                      height: heigh > 550.0
                                          ? heigh * .062
                                          : heigh * .055,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                              Color.fromRGBO(243, 101, 35, 1)),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(30),
                                          )),
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(30.0)),
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, "/SignUp");
                                        },
                                        child: Text(
                                          "Sign Up",
                                          style: TextStyle(
                                              color:
                                              Color.fromRGBO(243, 101, 35, 1),
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //clipper: displayDateClipper(),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class displayDateClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();

    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.4, size.height - 50.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 4.0), size.height - 160);
    var secondEndPoint = Offset(size.width, size.height - 130);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class bottomDateClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.moveTo(0, size.height * 0.09);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.03292,
        size.width * 0.6, size.height * 0.58);
    path.quadraticBezierTo(size.width * 1, size.height * 0.9017,
        size.width * 1.1, size.height * 0.4500);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
