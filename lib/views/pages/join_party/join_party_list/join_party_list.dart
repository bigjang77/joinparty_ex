import 'package:flutter/material.dart';
import 'package:ggamf_front/core/color.dart';

class JoinPartyListPage extends StatefulWidget {
  const JoinPartyListPage({Key? key}) : super(key: key);

  @override
  State<JoinPartyListPage> createState() => _JoinPartyListPageState();
}

class _JoinPartyListPageState extends State<JoinPartyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: TextFormField(
          //controller: ,
          decoration: InputDecoration(
            hintText: "search here",
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            filled: true,
            suffixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
