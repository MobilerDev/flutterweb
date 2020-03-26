import 'package:flutter/material.dart';
import 'package:seteks_web/common/aboutUsCard.dart';
import 'package:seteks_web/common/enums.dart';
import 'package:seteks_web/common/footerWidget.dart';
import 'package:seteks_web/common/strings.dart';

class MobileAboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: DARK_COLOR,
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
                    "HAKKIMIZDA",
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
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //PageHeader(),
                  SizedBox(height: 50),
                  AboutUsCard(
                      deviceType: DeviceType.mobile,
                      cardLayout: CardLayout.vertical,
                      secondItem: CardTextSection(
                        title: vision_title,
                        content: vision_content,
                      ),
                      firstItem: CardImageSection(image: vision_image)),
                  SizedBox(
                    height: 42,
                  ),
                  AboutUsCard(
                      deviceType: DeviceType.mobile,
                      cardLayout: CardLayout.vertical,
                      secondItem: CardTextSection(
                        title: misson_title,
                        content: misson_content,
                      ),
                      firstItem: CardImageSection(image: misson_image)),
                  SizedBox(
                    height: 42,
                  ),
                 /*  AboutUsCard(
                      deviceType: DeviceType.mobile,
                      cardLayout: CardLayout.vertical,
                      secondItem: CardTextSection(
                        title: quality_objectives_title,
                        content: quality_objectives_content,
                      ),
                      firstItem:
                          CardImageSection(image: quality_objectives_image)),
                  SizedBox(
                    height: 42,
                  ), */
                  AboutUsCard(
                    deviceType: DeviceType.mobile,
                    cardLayout: CardLayout.vertical,
                    secondItem: CardTextSection(
                      title: values_title,
                      content: values_content,
                    ),
                    firstItem: SizedBox(
                        width: double.infinity,
                        child: CardImageSection(image: values_image)),
                  ),
                 
                  FooterWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
