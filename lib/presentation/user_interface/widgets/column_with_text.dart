import 'package:flutter/material.dart';

import '../../../core/constance/app_size.dart';
import '../../../core/constance/color_assets.dart';
import 'text_app.dart';
import 'text_fields.dart';

class ColumnWithFieldText extends StatefulWidget {
  const ColumnWithFieldText(
      {super.key, required this.text, required this.width, this.controller});

  final String text;
  final double width;
  final TextEditingController? controller;

  @override
  State<ColumnWithFieldText> createState() => _ColumnWithFieldTextState();
}

class _ColumnWithFieldTextState extends State<ColumnWithFieldText> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextApp(text: widget.text, fontSize: AppSize.defaultSize! * 1.4),
      TextFields(
        controller: widget.controller,
        border: const BorderSide(width: 0, color: ColorAsset.borderColor),
        width: widget.width,
        height: AppSize.defaultSize! * 4,
      )
    ]);
  }
}
