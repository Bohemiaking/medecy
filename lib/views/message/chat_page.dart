import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_dimensions.dart';
import '../../constants/app_theme.dart';
import '../base/app_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  static const route = 'chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SizedBox(
        height: height(context),
        child: SafeArea(
            child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(right: 24, left: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Messages",
                  style: textApp(),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: height(context) / 1.3,
                  width: width(context) / 0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xffEBEBEB),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        chatHeader(),
                        chatContent(context),
                        chatSendContainer()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

  Widget chatHeader() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.defUserIcon,
                scale: 0.7,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dharmendra Yadav",
                    style: textMedium().copyWith(
                        color: const Color(0xff5C5C5C),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    "Active",
                    style: textMedium().copyWith(
                        color: const Color(0xff21BA62),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget chatContent(context) {
    return Container(
      height: height(context) / 1.7,
    );
  }

  Widget chatSendContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 270,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0x26000000), width: 1)),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(right: 20, left: 20),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_file_sharp,
                    color: Color(0xff777777),
                  ),
                ),
                hintText: "Type Here ...",
                hintStyle: textMedium()),
          ),
        ),
        const SizedBox(
          width: 26.6,
        ),
        InkWell(onTap: () {}, child: SvgPicture.asset(AppAssets.sendIcon))
      ],
    );
  }
}
