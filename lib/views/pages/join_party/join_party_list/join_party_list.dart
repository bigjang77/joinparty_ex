import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ggamf_front/core/color.dart';

class JoinPartyList extends StatefulWidget {
  const JoinPartyList({Key? key}) : super(key: key);

  @override
  State<JoinPartyList> createState() => _JoinPartyListState();
}

class _JoinPartyListState extends State<JoinPartyList> {
  int tag = 1;
  List<String> options = [
    '전체',
    '리그오브레전드',
    '배틀그라운드',
    '로스트아크',
    '발로란트',
    '오버워치',
    '스타크래프트',
    '기타',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 150,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              title: SingleChildScrollView(
                child: Column(
                  children: [
                    _searchBar(),
                    _gameCategory(),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: _partyWindow(),
          ),
        ],
      ),
    );
  }

  SliverChildBuilderDelegate _partyWindow() {
    return SliverChildBuilderDelegate((context, index) {
      return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        child: InkWell(
          onTap: () {
            showDialog(context: context, builder: (_) => _enterParty());
          },
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text("롤 바텀 모집중", style: TextStyle(fontSize: 20)),
                      width: 150,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("방장이름"),
                        SizedBox(width: 60),
                        Text("2/5"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  "assets/images/lol.png",
                ),
              ),
            ],
          ),
        ),
      );
    }, childCount: 10);
  }

  ChipsChoice<int> _gameCategory() {
    return ChipsChoice<int>.single(
      value: tag,
      onChanged: (val) => setState(() => tag = val),
      choiceItems: C2Choice.listFrom<int, String>(
        source: options,
        value: (i, v) => i,
        label: (i, v) => v,
      ),
      choiceStyle: C2ChipStyle.filled(
        height: 27,
        foregroundStyle: TextStyle(fontSize: 13),
        selectedStyle: C2ChipStyle(backgroundColor: Colors.green),
        color: Colors.amber[500],
      ),
    );
  }

  SizedBox _searchBar() {
    return SizedBox(
      width: 200,
      height: 30,
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          filled: true,
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "파티참가",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _enterParty() {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 150,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text("롤 바텀 모집중", style: TextStyle(fontSize: 20)),
                    width: 150,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("방장이름"),
                      SizedBox(width: 60),
                      Text("2/5"),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "입장",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                "assets/images/lol.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
