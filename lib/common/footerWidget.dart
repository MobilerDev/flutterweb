import 'package:flutter/material.dart';
import 'package:seteks_web/common/functions.dart';
import 'package:seteks_web/common/strings.dart';

class FooterWidget extends StatelessWidget {
  final showDesignerData;
  final color;
  FooterWidget({this.showDesignerData: false, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 15),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              "\u00a9 Levent Kantaroglu",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: (this.color != null) ? this.color : Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            SizedBox(height:5),
            (showDesignerData == false) ?SizedBox():
            GestureDetector(child:Text(
              "Tasarım: LEKA Design & Apps",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: (this.color != null) ? this.color : Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),onTap: (){
              launchURL(designer_url);
            },)
          ],
        ));
  }
}
