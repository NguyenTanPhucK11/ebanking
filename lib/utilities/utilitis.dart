import 'package:e_banking/account/pay_account.dart';
import 'package:e_banking/utilities/change_info.dart';
import 'package:e_banking/utilities/exchange_rate.dart';
import 'package:e_banking/utilities/find_ATM.dart';
import 'package:e_banking/utilities/interest_dollars.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class UtilitiesPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  final _blackColor = Colors.black;

  UtilitiesPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
             Padding(
                  padding: EdgeInsets.all(30),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  
                  children: <Widget>[
                    Text('Navi',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 18,
                          color: _mainColor,
                           shadows: [
                            Shadow(
                              blurRadius: 50.0,
                              color: _mainColor,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        )),
                    Text('      bank',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 14,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              blurRadius: 50.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
                RotatedBox(
                    quarterTurns: 1,
                    child: new Container(
                      width: 75,
                      height: 3,
                      color: _mainColor,
                    )),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
                GradientText("  Tiện ích",
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          _mainColor,
                          Colors.black,
                        ]),
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
            ),
            Column(children: [
              Container(
                width: 335,
                height: 65,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(14.0)),
                      side: BorderSide(width: 3.0, color: _mainColor)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ExchangeRatePage(
                            data: 'Hello there from the first page!'),
                      ),
                    );
                  },
                  color: _noColor,
                  elevation: 20.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.info,
                              size: 40.0,
                              color: _mainColor,
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                            ),
                            Text(
                              "Tỷ giá",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _mainColor,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 25.0,
                          color: _mainColor,
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 335,
                height: 65,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(14.0)),
                      side: BorderSide(width: 3.0, color: _mainColor)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => InterestDollarsPage(
                            data: 'Hello there from the first page!'),
                      ),
                    );
                  },
                  color: _noColor,
                  elevation: 20.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.info,
                              size: 40.0,
                              color: _mainColor,
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                            ),
                            Text(
                              "Lãi xuất",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _mainColor,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 25.0,
                          color: _mainColor,
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 335,
                height: 65,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(14.0)),
                      side: BorderSide(width: 3.0, color: _mainColor)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChangeInfoPage(
                            data: 'Hello there from the first page!'),
                      ),
                    );
                  },
                  color: _noColor,
                  elevation: 20.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.info,
                              size: 40.0,
                              color: _mainColor,
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                            ),
                            Text(
                              "Trao đổi thông tin",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _mainColor,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 25.0,
                          color: _mainColor,
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 335,
                height: 65,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(14.0)),
                      side: BorderSide(width: 3.0, color: _mainColor)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FindATMPage(
                            data: 'Hello there from the first page!'),
                      ),
                    );
                  },
                  color: _noColor,
                  elevation: 20.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.info,
                              size: 40.0,
                              color: _mainColor,
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                            ),
                            Text(
                              "Tìm kiếm ATM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _mainColor,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 25.0,
                          color: _mainColor,
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
