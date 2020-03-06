import 'package:flutter/material.dart';
//import 'package:businesscard/common/Constants.dart' as cnst;

class GetVisitingCardDetail extends StatefulWidget {
  @override
  _GetVisitingCardDetailState createState() => _GetVisitingCardDetailState();
}

class _GetVisitingCardDetailState extends State<GetVisitingCardDetail> {

  TextEditingController txtName = new TextEditingController();
  TextEditingController txtMobile = new TextEditingController();
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtJobTitle = new TextEditingController();
  TextEditingController txtCmpName = new TextEditingController();
  TextEditingController txtAddress = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    double heigh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () {
            //Navigator.pushReplacementNamed(context, "/Login");
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    //Navigator.pushReplacementNamed(context, "/Login");
                  },
                  child: Padding(
                    padding:
                    const EdgeInsets.only(top: 20, left: 15, bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        /*Icon(
                          Icons.close,
                          color: Color.fromRGBO(243, 101, 35, 1),
                          size: 25,
                        ),*/
                        /*ClipOval(
                            child: Image.asset(
                              "images/bg.jpeg",
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          ),*/
                        Center(child: Text("Logo")),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: heigh * 0.15),
                  //color: Colors.amber,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 5, left: 20, right: 20, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            controller: txtCmpName,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              labelText: "Company Name",
                              prefixIcon: Icon(
                                Icons.business,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            controller: txtEmail,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                              labelText: "Company Email",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextFormField(
                            controller: txtJobTitle,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Job Title',
                              labelText: "Job Title",
                              prefixIcon: Icon(
                                Icons.title,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            controller: txtAddress,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Address Line1',
                              labelText: "Address Line1",
                              prefixIcon: Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 2,
                          ),
                          TextFormField(
                            controller: txtAddress,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Address Line1',
                              labelText: "Address Line2",
                              prefixIcon: Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 2,
                          ),
                          TextFormField(
                            controller: txtAddress,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Address Line1',
                              labelText: "Address Line3",
                              prefixIcon: Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 2,
                          ),
                          TextFormField(
                            controller: txtCmpName,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Website',
                              labelText: "Website",
                              prefixIcon: Icon(
                                Icons.web,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            controller: txtCmpName,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Company Tagline',
                              labelText: "Company Tagline ",
                              prefixIcon: Icon(
                                Icons.label,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: heigh * 0.03),
                            height: heigh > 550.0 ? heigh * .062 : heigh * .055,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  new BorderRadius.circular(30.0)),
                              color: Color.fromRGBO(243, 101, 35, 1),
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, "/Login");
                              },
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
