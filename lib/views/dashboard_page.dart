import 'package:flutter/material.dart';

import 'package:rentaroof_agent/views/base/app_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const route = 'dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
    );
  }
}
