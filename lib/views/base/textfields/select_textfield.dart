// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../constants/app_theme.dart';

class SelectTextField extends StatelessWidget {
  final txtData;
  final onPressed;
  const SelectTextField({super.key, this.txtData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txtData,
          style: textMedium().copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1.5),
              borderRadius: BorderRadius.circular(8)),
          child: TextFormField(
            readOnly: true,
            textInputAction: TextInputAction.none,
            textAlignVertical: TextAlignVertical.center,
            onTap: onPressed,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 15, right: 15),
                border: InputBorder.none,
                hintText: "Select",
                hintStyle: textMedium().copyWith(fontSize: 13.0),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.arrow_downward_rounded,
                    size: 20,
                  ),
                  onPressed: onPressed,
                )),
          ),
        )
      ],
    );
  }
}
