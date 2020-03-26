import 'package:flutter/material.dart';
import 'package:seteks_web/common/footerWidget.dart';
import 'package:seteks_web/common/strings.dart';

class DesktopGallery extends StatelessWidget {
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
              height: 480,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/pageHeaderAbout.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withOpacity(0.55),
                      width: 2.5,
                    ),
                  ),
                  child: Text(
                    "GALERİ",
                    style: TextStyle(
                        fontSize: 58,
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
              margin: EdgeInsets.all(15),
              child: Text(
                "Flex Baskı",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    shadows: [Shadow(offset: Offset(2, 2), blurRadius: 5)]),
              ),
            ),
            Container(
              width: 850,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gallery_images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Card(
                        child: GridTile(
                            child: Image.asset(
                      gallery_images[index],
                      fit: BoxFit.cover,
                    ))),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              contentPadding: EdgeInsets.all(3),
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      gallery_images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          });
                    },
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                "Flok Baskı",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    shadows: [Shadow(offset: Offset(2, 2), blurRadius: 5)]),
              ),
            ),
            Container(
              width: 850,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gallery_images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Card(
                        child: GridTile(
                            child: Image.asset(
                      gallery_images[index],
                      fit: BoxFit.cover,
                    ))),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              contentPadding: EdgeInsets.all(3),
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      gallery_images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          });
                    },
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                "Transfer Baskı",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    shadows: [Shadow(offset: Offset(2, 2), blurRadius: 5)]),
              ),
            ),
            Container(
              width: 850,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gallery_images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Card(
                        child: GridTile(
                            child: Image.asset(
                      gallery_images[index],
                      fit: BoxFit.cover,
                    ))),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              contentPadding: EdgeInsets.all(3),
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      gallery_images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          });
                    },
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                "Süblimasyon Baskı",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    shadows: [Shadow(offset: Offset(2, 2), blurRadius: 5)]),
              ),
            ),
            Container(
              width: 850,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gallery_images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Card(
                        child: GridTile(
                            child: Image.asset(
                      gallery_images[index],
                      fit: BoxFit.cover,
                    ))),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              contentPadding: EdgeInsets.all(3),
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      gallery_images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          });
                    },
                  );
                },
              ),
            ),
            FooterWidget()
          ],
        ),
      ),
    );
  }
}
