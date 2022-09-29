import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
      ),
      primaryColor: Colors.white,
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

var stories = ['imed', 'wassim', 'fadel', 'dante', 'ydo'];
var posts = ['_mokrane_imed', '1001 night tech', 'fcbarcelona'];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 50,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black,
              selectedLabelStyle: TextStyle(fontSize: 0),
              iconSize: 30,
              unselectedItemColor: Colors.black,
              showUnselectedLabels: false,
              currentIndex: 0, //New

              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.videocam), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.shop_2), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              ]),
        ),
        appBar: AppBar(toolbarHeight: 60, elevation: 0.0, actions: [
          Container(
            width: width,
            padding: const EdgeInsets.fromLTRB(15, 12, 15, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/Instagram-Logo.png',
                  width: 120,
                  height: 60,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/more.png',
                        width: 24,
                        height: 24,
                      ),
                      Image.asset(
                        'assets/images/heart.png',
                        width: 24,
                        height: 24,
                      ),
                      Image.asset(
                        'assets/images/send.png',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 20),
                height: 70,
                child: Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: stories.length,
                        itemBuilder: (context, index) {
                          return (index == 0)
                              ? Container(
                                  margin: EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                                  height: 70,
                                  width: 70,
                                  child: Stack(children: [
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 2),
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          child: Icon(
                                            Icons.add,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1.5),
                                              color: Colors.blue,
                                              shape: BoxShape.circle),
                                        ))
                                  ]),
                                )
                              : Container(
                                  margin: EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                                  padding: EdgeInsets.all(3),
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle),
                                  ),
                                );
                        }))),
            SizedBox(
              height: 28,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 165,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 19),
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle),
                                  ),
                                  Text(
                                    posts[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              color: Colors.blue,
                              width: MediaQuery.of(context).size.width,
                              height: 350,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal: 19),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 120,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/more.png',
                                          width: 24,
                                          height: 24,
                                        ),
                                        Image.asset(
                                          'assets/images/heart.png',
                                          width: 24,
                                          height: 24,
                                        ),
                                        Image.asset(
                                          'assets/images/send.png',
                                          width: 24,
                                          height: 24,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.save),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                '130 likes',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                posts[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                'View 50 comments',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  '5 hours ago',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
