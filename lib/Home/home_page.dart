import 'package:flutter/material.dart';
import 'package:indie/Widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  static const String homeRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
