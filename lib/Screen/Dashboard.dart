import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isFirst = false;

  GlobalKey _globalKeyCard1 = new GlobalKey();
  GlobalKey _globalKeyCard2 = new GlobalKey();
  GlobalKey _globalKeyCard3 = new GlobalKey();

  GlobalKey<FlipCardState> cardKey1 = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> cardKey2 = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> cardKey3 = GlobalKey<FlipCardState>();

  _renderContent(context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
          decoration: BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Front', style: Theme.of(context).textTheme.headline),
              Text('Click here to flip back',
                  style: Theme.of(context).textTheme.body1),
            ],
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Back', style: Theme.of(context).textTheme.headline),
              Text('Click here to flip front',
                  style: Theme.of(context).textTheme.body1),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (kIsWeb) {
      // running on the web!
      print("It's web");
    } else {
      print("it's Android");
      // NOT running on the web! You can check for additional platforms here.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Padding(padding: EdgeInsets.only(top: 10)),
              RepaintBoundary(
                key: _globalKeyCard1,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: <Widget>[
                      FlipCard(
                        key: cardKey1,
                        flipOnTouch: true,
                        direction: FlipDirection.HORIZONTAL,
                        front: GestureDetector(
                          onTap: () {
                            cardKey1.currentState.toggleCard();
                          },
                          child: Material(
                            color: Color.fromRGBO(15, 14, 28, 1),
                            child: Container(
                              height: 200,
                              width: 344,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    width: 344,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.only(top: 10)),
                                        Image.network(
                                          "https://yokoent.com/images/to-be-continued-png-download-1.png",
                                          height: 70,
                                          width: 70,
                                          fit: BoxFit.fill,
                                          color: Colors.white,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 0),
                                          child: Text(
                                            "TagLine",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                letterSpacing: 2),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 40),
                                      child: Container(
                                        width: 344,
                                        height: 5,
                                        color: Color.fromRGBO(250, 177, 0, 1),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: MaterialButton(
                                        /* shape: RoundedRectangleBorder(
                                      borderRadius:
                                      new BorderRadius.circular(10.0)),*/
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        color: Color.fromRGBO(250, 177, 0, 1),
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, "/Dashboard");
                                        },
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              "images/internet.png",
                                              height: 15,
                                              width: 15,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: Text(
                                                "www.yoursite.com",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.7),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        back: GestureDetector(
                          onTap: () {
                            cardKey1.currentState.toggleCard();
                          },
                          child: Material(
                            child: Container(
                              height: 200,
                              width: 344,
                              margin: EdgeInsets.only(top: 0, bottom: 0),
                              //color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 200,
                                        width: 149,
                                        color: Color.fromRGBO(15, 14, 28, 1),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.network(
                                              "https://yokoent.com/images/to-be-continued-png-download-1.png",
                                              height: 70,
                                              width: 70,
                                              fit: BoxFit.fill,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, bottom: 0),
                                              child: Text(
                                                "TagLine",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12,
                                                    letterSpacing: 2),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 6,
                                        height: 344,
                                        color: Color.fromRGBO(250, 177, 0, 1),
                                      ),
                                      Container(
                                        width: 189,
                                        padding: EdgeInsets.only(
                                            left: 30,
                                            bottom: 10,
                                            top: 10,
                                            right: 10),
                                        //color: Colors.pink,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            RichText(
                                              text: TextSpan(
                                                style:
                                                    DefaultTextStyle.of(context)
                                                        .style,
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: "DENISH",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: " UBHAL",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "Application Developer",
                                              style: TextStyle(fontSize: 11),
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8)),
                                            Text(
                                              "+91 87584 22007",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              "+91 87584 22007",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8)),
                                            Text(
                                              "www.website.com",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              "your@gmail.com",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8)),
                                            Text(
                                              "Your Address",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              "Your Address",
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 40, top: 20, bottom: 20),
                                      child: Container(
                                        width: 38,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(250, 177, 0, 1),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: <Widget>[
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5)),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50))),
                                                height: 25,
                                                width: 25,
                                                child: Icon(
                                                  Icons.person,
                                                  color: Colors.white,
                                                  size: 12,
                                                )),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 15)),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50))),
                                                height: 25,
                                                width: 25,
                                                child: Icon(
                                                  Icons.call,
                                                  color: Colors.white,
                                                  size: 12,
                                                )),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 15)),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(50))),
                                              height: 25,
                                              width: 25,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.5),
                                                child: Image.asset(
                                                  "images/internet.png",
                                                  height: 5,
                                                  width: 5,
                                                  color: Colors.white,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 15)),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50))),
                                                height: 25,
                                                width: 25,
                                                child: Icon(
                                                  Icons.location_on,
                                                  color: Colors.white,
                                                  size: 12,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
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
              RepaintBoundary(
                key: _globalKeyCard2,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: <Widget>[
                      FlipCard(
                        key: cardKey2,
                        flipOnTouch: true,
                        direction: FlipDirection.HORIZONTAL,
                        front: GestureDetector(
                          onTap: () => cardKey2.currentState.toggleCard(),
                          child: Material(
                            color: Color.fromRGBO(15, 14, 28, 1),
                            child: Container(
                              height: 200,
                              width: 344,
                              child: Container(
                                width: 344,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new ExactAssetImage(
                                        'images/cardfront.png'),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      child: Container(),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.network(
                                              "https://yokoent.com/images/to-be-continued-png-download-1.png",
                                              height: 70,
                                              width: 70,
                                              fit: BoxFit.fill,
                                              color: Color.fromRGBO(
                                                  250, 177, 0, 1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 0, bottom: 0),
                                              child: Text(
                                                "Company",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12,
                                                    letterSpacing: 2),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 0, bottom: 0),
                                              child: Text(
                                                "Name",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10,
                                                    letterSpacing: 2),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, bottom: 0),
                                              child: Text(
                                                "www.company.com",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                    letterSpacing: 2),
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
                          ),
                        ),
                        back: Material(
                          child: Container(
                            height: 200,
                            width: 344,
                            margin: EdgeInsets.only(top: 0, bottom: 0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    new ExactAssetImage('images/cardback.png'),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Flexible(
                                    flex: 2,
                                    child: Container(
                                      //color: Colors.deepOrange,
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  50))),
                                                  height: 20,
                                                  width: 20,
                                                  child: Icon(
                                                    Icons.person,
                                                    color: Colors.black,
                                                    size: 12,
                                                  )),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    RichText(
                                                      text: TextSpan(
                                                        style:
                                                            DefaultTextStyle.of(
                                                                    context)
                                                                .style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: "DENISH",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: " UBHAL",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white,
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      "Application Developer",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(top: 8)),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  50))),
                                                  height: 20,
                                                  width: 20,
                                                  child: Icon(
                                                    Icons.call,
                                                    color: Colors.black,
                                                    size: 12,
                                                  )),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      "+91 87584 22007",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      "+91 87584 22007",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(top: 8)),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50))),
                                                height: 20,
                                                width: 20,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: Image.asset(
                                                    "images/internet.png",
                                                    height: 5,
                                                    width: 5,
                                                    color: Colors.black,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      "www.website.com",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      "your@gmail.com",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(top: 8)),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  50))),
                                                  height: 20,
                                                  width: 20,
                                                  child: Icon(
                                                    Icons.location_on,
                                                    color: Colors.black,
                                                    size: 12,
                                                  )),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      "Your Address",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      "Your Address",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                        //color: Colors.blueAccent,
                                        ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      //color: Colors.red,
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 15)),
                                          Image.network(
                                            "https://yokoent.com/images/to-be-continued-png-download-1.png",
                                            height: 35,
                                            width: 35,
                                            fit: BoxFit.fill,
                                            color:
                                                Color.fromRGBO(250, 177, 0, 1),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                              "Company",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 7,
                                                  letterSpacing: 0.5),
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
    );
  }

}
