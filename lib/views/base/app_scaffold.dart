import 'package:flutter/material.dart';

import '../../controllers/constants/app_dimensions.dart';
import 'app_bar.dart';
import 'app_drawer.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  const AppScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      endDrawer: const AppDrawer(),
      body: SizedBox(
        height: height(context),
        child: SafeArea(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(right: 24, left: 23),
            child: child,
          ),
        )),
      ),
    );
  }
}
