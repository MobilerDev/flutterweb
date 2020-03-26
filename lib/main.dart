import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:seteks_web/common/strings.dart';
import 'package:seteks_web/desktop/desktopHomePage.dart';
import 'package:seteks_web/mobileHomePage.dart';
import 'package:seteks_web/tabletHomePage.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: APP_NAME,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          appBarTheme: AppBarTheme(
            color: Colors.white,
          ),
          //scaffoldBackgroundColor: DARK_COLOR,
        ),
        home: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => MobileHomePage(),
          tablet: (BuildContext context) => TabletHomePage(),
          desktop: (BuildContext context) => DesktopHomePage(),
          watch: (BuildContext context) => MobileHomePage(),
        ));
  }
}//
