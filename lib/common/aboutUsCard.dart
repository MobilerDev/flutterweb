import 'package:flutter/material.dart';
import 'package:seteks_web/common/enums.dart';
import 'package:seteks_web/common/strings.dart';

enum CardLayout { horizontal, vertical }

class CardImageSection extends StatelessWidget {
  final String image;
  CardImageSection({this.image});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      //padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          this.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CardTextSection extends StatelessWidget {
  final String title;
  final String content;
  CardTextSection({this.title, this.content});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 4,
                  width: 85,
                  color: LIGHT_COLOR,
                ),
              ),
              Text(this.content),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutUsCard extends StatelessWidget {
  final CardLayout cardLayout;
  final Widget firstItem;
  final Widget secondItem;
  final DeviceType deviceType;
  AboutUsCard({
    @required this.cardLayout,
    @required this.firstItem,
    @required this.secondItem,
    @required this.deviceType,
  });
  @override
  Widget build(BuildContext context) {
    double _height;
    switch (deviceType) {
      case DeviceType.desktop:
        _height = 320;
        break;
      case DeviceType.tablet:
        _height = 320;
        break;
      case DeviceType.mobile:
        _height = 520;
        break;
    }
    return SizedBox(
      height: _height,
      child: Card(
        child: Container(
          padding: EdgeInsets.all(15),
          child: (this.cardLayout == CardLayout.horizontal)
              ? Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: firstItem,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: secondItem,
                      ),
                    ),
                  ],
                )
              : Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: firstItem,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: secondItem,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
