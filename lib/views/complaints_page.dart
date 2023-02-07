import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rentaroof_agent/controllers/constants/app_dimensions.dart';
import 'package:rentaroof_agent/views/base/app_bar.dart';
import 'package:rentaroof_agent/views/base/app_drawer.dart';
import 'package:rentaroof_agent/views/base/buttons/app_button.dart';
import 'package:rentaroof_agent/views/base/textfields/select_textfield.dart';

import '../controllers/constants/app_theme.dart';

class ComplaintsPage extends StatelessWidget {
  const ComplaintsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      endDrawer: const AppDrawer(),
      body: SizedBox(
        height: height(context),
        width: width(context),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(right: 24, left: 23),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Complaints & Support",
                        style: textApp(),
                      ),
                      AppButton(
                          height: 44,
                          width: 138,
                          isColorFilled: true,
                          txtdata: "Raise Ticket"),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const SelectTextField(
                    hintText: "Complaints",
                    txtData: "",
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
