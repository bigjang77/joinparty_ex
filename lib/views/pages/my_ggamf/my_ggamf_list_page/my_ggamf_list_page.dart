import 'package:flutter/material.dart';
import 'package:ggamf_front/core/color.dart';

import '../../../common_components/custom_icons_icons.dart';

class MyGgamfListPage extends StatefulWidget {
  const MyGgamfListPage({Key? key}) : super(key: key);

  @override
  State<MyGgamfListPage> createState() => _MyGgamfListPageState();
}

class _MyGgamfListPageState extends State<MyGgamfListPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("내 껨프", style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/images/20.jpg"),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "김겐지",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "나는 오늘밤 사냥에 나선다아dkkkkkkkkkkkkkkkkkkk",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/rgb.gif"),
                ),
                border: Border.all(width: 1),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 120,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/76.jpg"),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              "김겐지",
                              style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "나는 오늘밤 사냥에 나선다아dkkkkkkkkkkkkkkkkkkk",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/sunset.gif"),
                ),
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/images/41.jpg"),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "김겐지",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "나는 오늘밤 사냥에 나선다아dkkkkkkkkkkkkkkkkkkk",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/card.gif"),
                ),
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/images/76.jpg"),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "김겐지",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "나는 오늘밤 사냥에 나선다아dkkkkkkkkkkkkkkkkkkk",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffFBC5D8),
                    Color.fromARGB(0, 243, 218, 153),
                  ],
                ),
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/images/76.jpg"),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "김겐지",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "나는 오늘밤 사냥에 나선다아dkkkkkkkkkkkkkkkkkkk",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
