import 'package:flutter/material.dart';
import 'package:seteks_web/common/strings.dart';
import 'package:seteks_web/desktop/desktopHome.dart';
import 'package:seteks_web/mobile/mobileAboutUs.dart';
import 'package:seteks_web/mobile/mobileContact.dart';
import 'package:seteks_web/mobile/mobileGallery.dart';

class TabletHomePage extends StatefulWidget {
  @override
  _TabletHomePageState createState() => _TabletHomePageState();
}

class _TabletHomePageState extends State<TabletHomePage>
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
        title: Text(
          APP_NAME,
          style: TextStyle(color: DARK_COLOR, fontWeight: FontWeight.w600),
        ),
        bottom: TabBar(
          unselectedLabelColor: LIGHT_COLOR,
          labelColor: DARK_COLOR,
          tabs: [
            new Tab(text: "Ana Sayfa"),
            new Tab(text: "Galeri"),
            new Tab(text: "Hakkımızda"),
            new Tab(text: "İletişim"),
          ],
          controller: _tabController,
        ),
        centerTitle: true,
      ),
      body: TabBarView(
        children: [
          DesktopHome(),
          MobileGallery(),
          MobileAboutUs(),
          MobileContact()
        ],
        controller: _tabController,
      ),
    );
  }
}
