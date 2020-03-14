import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:businesscard/Common/Constants.dart' as cnst;

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.person),text: "Personal",),
              Tab(icon: Icon(Icons.location_on),text: "Address",),
              Tab(icon: Icon(Icons.photo_size_select_actual),text: "Document",),
              Tab(icon: Icon(Icons.format_align_left),text: "Other",),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.person,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Name",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("Kapil R Singh"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone_iphone,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Mobile",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("9033608708"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.call_to_action,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Aadharcard No",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("5632547856325485"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.credit_card,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Driving Licence No",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("GJ05 20160028139"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.person,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Mother Name",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("Usha R Singh"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.person,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Father Name",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("Ramkhiladi T Singh"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.credit_card,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Blood Group",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("O+"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.credit_card,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Date Of Birth",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("08 / 08 / 1993"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.credit_card,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Gender",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("Male"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.credit_card,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Marital Status",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("Single"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.credit_card,size: 24,color: cnst.app_primary_material_color,),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Marriage Date",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1,),),
                            Text("GJ05 20160028139"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 3,
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      shape: RoundedRectangleBorder(
                        //side: BorderSide(color: cnst.appcolor)),
                        side: BorderSide(
                            width: 0.05,
                            color: Colors.grey,),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Surat Head Office",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),),
                            SizedBox(height: 10,),
                            Text("84 Mansukhlal Tower, Opp. Dhiraj Sons",style: TextStyle(fontSize: 14,),),
                            Text("Surat, Gujarat - 394221",style: TextStyle(fontSize: 14,),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.person),
                                        SizedBox(width: 5,),
                                        Text("Contact Person",style: TextStyle(fontSize: 14,),),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.phone_iphone),
                                        SizedBox(width: 5,),
                                        Text("9595959596",style: TextStyle(fontSize: 14,),),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.phone),
                                        SizedBox(width: 5,),
                                        Text("0261 8545856",style: TextStyle(fontSize: 14,),),
                                      ],
                                    ),
                                  ],
                                ),
                                MaterialButton(
                                  onPressed: (){},
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 0.50,
                                      color: cnst.app_primary_material_color,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                  ),
                                  child: Text("Get Dirction",style: TextStyle(color: cnst.app_primary_material_color),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                        elevation: 2,
                        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.05,
                            color: Colors.grey,),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Residence Address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),),
                                SizedBox(height: 10,),
                                Text("84 Mansukhlal Tower, Opp. Dhiraj Sons",style: TextStyle(fontSize: 14,),),
                                Text("Surat, Gujarat - 394221",style: TextStyle(fontSize: 14,),),
                              ],
                            ),
                        ),
                    ),
                    Card(
                      elevation: 2,
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.05,
                          color: Colors.grey,),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Permanent Address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),),
                            SizedBox(height: 10,),
                            Text("84 Mansukhlal Tower, Opp. Dhiraj Sons",style: TextStyle(fontSize: 14,),),
                            Text("Surat, Gujarat - 394221",style: TextStyle(fontSize: 14,),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.05,
                          color: Colors.grey,),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Image.asset("images/aadharcardfront.png",width: MediaQuery.of(context).size.width - 40,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 10),
                              height: 48,
                              decoration: BoxDecoration(
                                color: cnst.app_primary_material_color,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Aadhar Card Front Photo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin:
                      EdgeInsets.only(left: 10, right: 10, top: 10),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.05,
                          color: Colors.grey,),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Image.asset("images/aadhaarcardback.png",width: MediaQuery.of(context).size.width - 40,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 10),
                              height: 48,
                              decoration: BoxDecoration(
                                color: cnst.app_primary_material_color,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Aadhar Card Back Photo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin:
                      EdgeInsets.only(left: 10, right: 10, top: 10),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.05,
                          color: Colors.grey,),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Image.asset("images/drivinglicence.png",width: MediaQuery.of(context).size.width - 40,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 10),
                              height: 48,
                              decoration: BoxDecoration(
                                color: cnst.app_primary_material_color,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Driving Licence Photo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}