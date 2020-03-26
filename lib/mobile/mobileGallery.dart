import 'package:flutter/material.dart';
import 'package:seteks_web/common/footerWidget.dart';
import 'package:seteks_web/common/strings.dart';

class MobileGallery extends StatelessWidget {
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
                    "GALERİ",
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
              padding: EdgeInsets.all(20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gallery_images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
              width: 850,
              padding: EdgeInsets.all(20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gallery_images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
            
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
