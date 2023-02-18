import 'package:flutter/material.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_theme.dart';

class ImageTextStackContainer extends StatelessWidget {
  const ImageTextStackContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.bgImage,
          scale: 0.9,
        ),
        Positioned(
          bottom: 32,
          left: 16,
          child: Text(
            "Rental housing has become quite big in a\ndeveloping country like India. So much\nso that many states in India",
            style: textMedium()
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
