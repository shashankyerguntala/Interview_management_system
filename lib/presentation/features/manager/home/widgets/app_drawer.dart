import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/string_constants.dart';

class AppDrawer extends StatelessWidget {
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChanged;

  const AppDrawer({
    super.key,
    required this.isDarkTheme,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Drawer(
      elevation: 8,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: SafeArea(
        child: Container(
          color: theme.colorScheme.surface,
          child: ListView(
            children: [
              DrawerHeader(
                curve: Curves.fastLinearToSlowEaseIn,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      theme.colorScheme.primaryContainer.withAlpha(9),
                      theme.colorScheme.primaryContainer.withAlpha(6),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: theme.colorScheme.onPrimaryContainer.withAlpha(
                            2,
                          ),
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: theme.shadowColor.withAlpha(1),
                            blurRadius: 6,
                            offset: const Offset(2, 2),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundColor: theme.colorScheme.onPrimaryContainer,
                        child: Icon(
                          Icons.person_rounded,
                          size: 40,
                          color: theme.colorScheme.primaryContainer,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      StringConstants.managerTitle,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.inverseSurface,
                      ),
                    ),
                  ],
                ),
              ),

              _DrawerTile(
                icon: Icons.dashboard_outlined,
                title: StringConstants.homeTitle,
                onTap: () {},
              ),
              _DrawerTile(
                icon: Icons.people_alt_outlined,
                title: 'Candidates',
                onTap: () {},
              ),

              _DrawerTile(
                icon: Icons.settings_outlined,
                title: 'Settings',
                onTap: () {},
              ),

              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: theme.colorScheme.error,
                ),
                title: Text(
                  'Logout',
                  style: textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.error,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _DrawerTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return ListTile(
      leading: Icon(icon, color: theme.colorScheme.primary),
      title: Text(
        title,
        style: textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onSurface,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      hoverColor: theme.colorScheme.primaryContainer.withAlpha(1),
    );
  }
}
