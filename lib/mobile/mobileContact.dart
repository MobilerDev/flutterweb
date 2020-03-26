import 'package:flutter/material.dart';
import 'package:seteks_web/common/footerWidget.dart';
import 'package:seteks_web/common/strings.dart';

class MobileContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 175,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/pageHeaderAbout.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
                  padding: EdgeInsets.all(45),
                  child: Text(
                    "İLETİŞİM",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(
                              5,
                              5,
                            ),
                            blurRadius: 10,
                          )
                        ]),
                  )),
            ),
            Container(
              width: 850,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.call, color: DARK_COLOR, size: 38)),
                      Expanded(
                        flex: 3,
                        child: SelectableText(
                          contact_call_number1,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 75,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.call, color: DARK_COLOR, size: 38)),
                      Expanded(
                        flex: 3,
                        child: SelectableText(
                          contact_call_number2,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 75,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.mail, color: DARK_COLOR, size: 38)),
                      Expanded(
                        flex: 3,
                        child: SelectableText(
                          contact_email,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 75,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.location_on,
                          color: DARK_COLOR,
                          size: 38,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: SelectableText(
                          contact_address,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 75,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
            FooterWidget(
              showDesignerData: true,
              color: Colors.grey.shade800,
            )
          ],
        ),
      ),
    );
  }
}
