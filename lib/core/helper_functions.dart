import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/core/constants/string_constants.dart';

class HelperFunctions {
  static void showSnackBar(BuildContext context, String message, bool isError) {
    final messenger = ScaffoldMessenger.of(context);

    messenger.clearSnackBars();

    messenger.showSnackBar(
      SnackBar(
        elevation: 2,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: isError
            ? ColorConstants.errorColor
            : ColorConstants.successColor,
        content: Row(
          children: [
            Icon(
              isError ? Icons.error_rounded : Icons.check_circle_rounded,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: TextStyle(color: ColorConstants.backgroundColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Color getStatusColor(String interviewStatus) {
    switch (interviewStatus.toLowerCase()) {
      case 'completed':
        return Colors.green;
      case 'scheduled':
        return Colors.blue;
      case 'cancelled':
        return Colors.red;
      case 'pending':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  static int getCurrentIndex(String location) {
    if (location.startsWith(StringConstants.managerHome)) return 0;
    if (location.startsWith(StringConstants.managerInterviewers)) return 1;
    if (location.startsWith(StringConstants.managerCreate)) return 2;
    return 0;
  }
}
