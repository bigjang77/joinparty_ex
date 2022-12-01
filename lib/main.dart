import 'package:flutter/material.dart';
import 'package:ggamf_front/views/pages/join_party/join_party_list/join_party_list.dart';
import 'package:ggamf_front/views/pages/login_user/login_user_page.dart';
import 'package:ggamf_front/views/pages/my_ggamf/my_ggamf_list_page/my_ggamf_list_page.dart';

void main() {
  runApp(MyApp());
}

// 페이지 context를 global로 가지고 있을 NavigatorKey 적용
final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: MyGgamfListPage(),
      routes: {},
    );
  }
}
