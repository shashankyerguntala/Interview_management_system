class StringConstants {
  //!auth constants
  static final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  static const String appTitle = 'Postly App';

  static const String welcomeBack = 'Welcome Back ! Sign In into your account';

  static const String signInTitle = 'Sign In';
  static const String usernameLabel = 'Username';
  static const String emailLabel = 'Email';
  static const String passwordLabel = 'Password';

  static const String emailEmpty = 'Enter an email';
  static const String emailInvalid = 'Enter a valid email';
  static const String passwordEmpty = 'Enter a password';
  static const String passwordShort = 'Password must be at least 6 characters';

  //! route constants

  static const String signIn = '/signin';
  static const String signUp = '/signup';
  static const String manager = '/manager';
  static const String interviewer = '/interviewer';

  static const String admin = '/admin';
  static const String talentAcquisition = '/talentacquisition';
  static const String superAdmin = '/superadmin';
  static const String addAdmin = '/addadmin';

  static const String interviewerhomepage = '/interviewerhomepage';

  //! Manager Home screen
  static const String menu = "MENU";
  static const String managerTitle = "MANAGER";
  static const String homeTitle = "HOME";

  static const String changeTheme = "THEME";
  static const String cancel = "Cancel";
  static const String flagAsSensitive = "Flag as Sensitive";

  //! admin texts
  static const String l1ClearedCandidates = "L1 Cleared Candidates";
  static const String totalCandidates = "Total Candidates";
  static const String searchCandidates = "Search Candidates";
  static const String recruitmentData = 'Recruitment Dashboard';
  static const String trackYourHiring = 'Track your hiring pipeline';
  static const String processJourney = 'Process Journey';
  static const String performanceMetrics = 'Performance Metrics';
}
