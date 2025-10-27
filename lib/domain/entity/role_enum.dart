enum UserRole {
  manager,
  interviewer,
  talentAcquisition,
  admin;

  
  String get value {
    switch (this) {
      case UserRole.manager:
        return "Manager";
      case UserRole.interviewer:
        return "Interviewer";
      case UserRole.talentAcquisition:
        return "Talent Acquisition";
      case UserRole.admin:
        return "Admin";
    }
  }

  static UserRole fromString(String role) {
    switch (role.toLowerCase()) {
      case "manager":
        return UserRole.manager;
      case "interviewer":
        return UserRole.interviewer;
      case "talent acquisition":
      case "talentacquisition":
      case "ta":
        return UserRole.talentAcquisition;
      case "admin":
        return UserRole.admin;
      default:
        throw ArgumentError("Invalid user role: $role");
    }
  }
}
