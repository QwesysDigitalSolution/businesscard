import 'package:flutter/material.dart';
//import 'package:businesscard/common/Constants.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            Navigator.pushReplacementNamed(context, "/Login");
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/Login");
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 15, bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.close,
                          color: Color.fromRGBO(243, 101, 35, 1),
                          size: 25,
                        ),
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
                          top: 5, left: 20, right: 20, bottom: heigh * 0.15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            controller: txtName,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              labelText: "Name",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            controller: txtMobile,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              counterText: "",
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
                          TextFormField(
                            controller: txtEmail,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                              labelText: "Email",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          /*TextFormField(
                            controller: txtJobTitle,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Job Title',
                              labelText: "Job Title",
                              prefixIcon: Icon(
                                Icons.title,
                                color: app_primary_material_color,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            controller: txtCmpName,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Company Name',
                              labelText: "Company Name",
                              prefixIcon: Icon(
                                Icons.business,
                                color: app_primary_material_color,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),*/
                          TextFormField(
                            controller: txtAddress,
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Enter Address',
                              labelText: "Address",
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
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Select State',
                              labelText: "State",
                              prefixIcon: Icon(
                                Icons.account_balance,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Select City',
                              labelText: "City",
                              prefixIcon: Icon(
                                Icons.location_city,
                                color: Color.fromRGBO(243, 101, 35, 1),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            decoration: InputDecoration(
                              hintText: 'Select Area',
                              labelText: "Area",
                              prefixIcon: Icon(
                                Icons.departure_board,
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
                                Navigator.pushReplacementNamed(context, "/GetVisitingCardDetail");
                              },
                              child: Text(
                                "Sign Up",
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/Login');
                    },
                    child: Container(
                      color: Colors.deepOrange[200],
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already Have an Account ? ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                letterSpacing: 0.5
                              ),
                            ),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )
                          ],
                        ),
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
