import 'package:flutter/material.dart';

class ScaffoldX extends StatelessWidget {
  ScaffoldX({super.key, required this.body, this.appBar});
  AppBar? appBar;
  Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: body,
        ),
      ),
    );
  }
}
