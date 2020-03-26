import 'package:flutter/material.dart';
import 'package:seteks_web/common/strings.dart';

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DARK_COLOR,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 0.5,
                color: LIGHT_COLOR,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(vertical: 60, horizontal: 35),
                  child: Text(
                    "S",
                    style: TextStyle(color: Colors.white, fontSize: 42),
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                color: LIGHT_COLOR,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(vertical: 60, horizontal: 35),
                  child: Text(
                    "&",
                    style: TextStyle(color: Colors.white, fontSize: 42),
                  ),
                ),
              ),
              Card(
                elevation: 0.5,
                color: LIGHT_COLOR,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(vertical: 60, horizontal: 35),
                  child: Text(
                    "E",
                    style: TextStyle(color: Colors.white, fontSize: 42),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            APP_NAME,
            style: TextStyle(
                color: Colors.white, fontSize: 38, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Baskı ve Tekstil Transfer Sanayi Ticaret Ltd Şti",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 29, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
