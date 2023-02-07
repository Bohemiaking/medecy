// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../controllers/constants/app_dimensions.dart';
import '../../controllers/constants/app_theme.dart';

class AppDropDown extends StatefulWidget {
  final List items;
  Object? value;
  final String hintText;
  final String txtData;
  AppDropDown(
      {super.key,
      required this.items,
      required this.value,
      required this.hintText,
      required this.txtData});

  @override
  State<AppDropDown> createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.txtData,
            style: textMedium().copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: width(context) / 1,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1.5),
              borderRadius: BorderRadius.circular(8)),
          child: DropdownButton(
            underline: const SizedBox.shrink(),
            isExpanded: true,
            hint: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(widget.hintText,
                  style: textMedium().copyWith(fontSize: 13.0)),
            ),
            items: widget.items.map((valueItem) {
              return DropdownMenuItem(
                  value: valueItem,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      valueItem,
                      style: textOrange().copyWith(fontSize: 13.0),
                    ),
                  ));
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                widget.value = newValue;
                print("Selected Category ===> ${widget.value}");
              });
            },
            value: widget.value,
          ),
        ),
      ],
    );
  }
}
