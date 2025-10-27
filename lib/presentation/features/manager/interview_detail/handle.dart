import 'package:flutter/widgets.dart';
import 'package:hire_pro/core/constants/color_constants.dart';

class Handle extends StatelessWidget {
  const Handle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 8),
      width: 40,
      height: 4,
      decoration: BoxDecoration(
        color: ColorConstants.disabledColor,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
