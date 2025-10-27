import 'package:go_router/go_router.dart';
import 'package:hire_pro/core/constants/string_constants.dart';
import 'package:hire_pro/presentation/features/admin/screen/admin_screen.dart';
import 'package:hire_pro/presentation/features/authentication/sign_in/screen/sign_in_screen.dart';
import 'package:hire_pro/presentation/features/interviewer/screen/interviewer_home_page.dart';
import 'package:hire_pro/presentation/features/manager/home/screens/manager_screen.dart';

class AppRoutes {
  static final router = GoRouter(
    initialLocation: StringConstants.admin,

    routes: [
      GoRoute(
        path: StringConstants.signIn,
        builder: (context, _) => const SignInScreen(),
      ),
      GoRoute(
        path: StringConstants.admin,
        builder: (context, _) => const AdminScreen(),
      ),
      GoRoute(
        path: StringConstants.interviewerhomepage,
        builder: (context, _) => const InterviewerHomePage(),
      ),
      GoRoute(
        path: StringConstants.manager,
        builder: (context, _) => const ManagerScreen(),
      ),
    ],
  );
}
