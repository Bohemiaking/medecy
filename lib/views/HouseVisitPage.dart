import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';
import 'package:rentaroof_agent/views/base/app_scaffold.dart';
import 'package:rentaroof_agent/views/base/property_container.dart';

import '../controllers/constants/app_theme.dart';

class HouseVisitPage extends StatelessWidget {
  const HouseVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          "House Visits",
          style: textApp(),
        ),
        const SizedBox(
          height: 40,
        ),
        const PropertyContainer(),
        verticalSpace(24.0)
      ],
    ));
  }
}
