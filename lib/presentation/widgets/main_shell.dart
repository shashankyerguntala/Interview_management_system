// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:hire_pro/core/constants/color_constants.dart';
// import 'package:hire_pro/core/constants/string_constants.dart';
// import 'package:hire_pro/core/helper_functions.dart';

// class MainShell extends StatelessWidget {
//   final Widget child;
//   const MainShell({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     final location = GoRouterState.of(context).uri.toString();
//     final currentIndex = HelperFunctions.getCurrentIndex(location);

//     return Scaffold(
//       body: child,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: (index) {
//           switch (index) {
//             case 0:
//               context.go(StringConstants.home);
//               break;
//             case 1:
//               context.go(StringConstants.create);
//               break;
//             case 2:
//               context.go(StringConstants.profile);
//               break;
//           }
//         },
//         backgroundColor: ColorConstants.backgroundColor,
//         selectedItemColor: ColorConstants.primaryColor,
//         unselectedItemColor: ColorConstants.highlightColor,
//         showUnselectedLabels: true,
//         selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
//         unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_box_outlined),
//             label: 'Create',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
