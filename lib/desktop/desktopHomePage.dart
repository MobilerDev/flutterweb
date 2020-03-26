import 'package:flutter/material.dart';
import 'package:seteks_web/common/strings.dart';
import 'package:seteks_web/desktop/desktopAboutUs.dart';
import 'package:seteks_web/desktop/desktopContact.dart';
import 'package:seteks_web/desktop/desktopGallery.dart';
import 'package:seteks_web/desktop/desktopHome.dart';

class DesktopHomePage extends StatefulWidget {
  @override
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              APP_NAME,
              style: TextStyle(color: DARK_COLOR, fontWeight: FontWeight.w600),
            ),
            Expanded(
              // width: 400,
              child: SizedBox(),
            ),
            Expanded(
                // width: 400,
                child: TabBar(
              unselectedLabelColor: LIGHT_COLOR,
              labelColor: DARK_COLOR,
              tabs: [
                new Tab(text: "Ana Sayfa"),
                new Tab(text: "Galeri"),
                new Tab(text: "Hakkımızda"),
                new Tab(text: "İletişim"),
              ],
              controller: _tabController,
            ))
          ],
        ),
        centerTitle: true,
      ),
      body: TabBarView(
        children: [
          DesktopHome(),
          DesktopGallery(),
          DesktopAboutUs(),
          DesktopContact(),
        ],
        controller: _tabController,
      ),
    );
  }
}
