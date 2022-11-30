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
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/images/20.jpg"),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "홍길동",
                            style: TextStyle(fontSize: 25, color: Colors.black),
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
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffFBC5D8),
                    Color.fromARGB(0, 243, 218, 153),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                color: kSecondaryColor,
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
                            "임꺾정",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                color: kSecondaryColor,
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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                color: kSecondaryColor,
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.joinparty, size: 25),
            label: '파티참가',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.myparty),
            label: '나의 파티',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.mygamf),
            label: '내 껨프',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.recomgamf),
            label: '추천 껨프',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.myprofile),
            label: '내 프로필',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
