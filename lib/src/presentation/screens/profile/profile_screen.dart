import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/widgets/circular_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/profile_item.dart';
import 'components/profile_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircularButton(
                icon: Icons.arrow_back,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColors.textColor, AppColors.textColorLight],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            size: 50,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Guest User',
                        style: GoogleFonts.chakraPetch(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'guest@example.com',
                        style: GoogleFonts.chakraPetch(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const ProfileSection(
                title: 'Account Settings',
                items: [
                  ProfileItem(
                    icon: Icons.person_outline,
                    title: 'Edit Profile',
                    subtitle: 'Change your account information',
                  ),
                  ProfileItem(
                    icon: Icons.lock_outline,
                    title: 'Security',
                    subtitle: 'Password and authentication',
                  ),
                  ProfileItem(
                    icon: Icons.notifications_outlined,
                    title: 'Notifications',
                    subtitle: 'Manage your notification preferences',
                  ),
                ],
              ),
              const ProfileSection(
                title: 'App Settings',
                items: [
                  ProfileItem(
                    icon: Icons.language,
                    title: 'Language',
                    subtitle: 'Change app language',
                    trailing: Text('English'),
                  ),
                  ProfileItem(
                    icon: Icons.dark_mode_outlined,
                    title: 'Dark Mode',
                    subtitle: 'Change app theme',
                    trailing: Switch(value: false, onChanged: null),
                  ),
                ],
              ),
              const ProfileSection(
                title: 'Support & About',
                items: [
                  ProfileItem(
                    icon: Icons.help_outline,
                    title: 'Help & Support',
                    subtitle: 'Get help and contact us',
                  ),
                  ProfileItem(
                    icon: Icons.info_outline,
                    title: 'About',
                    subtitle: 'Learn more about BrixFind',
                  ),
                  ProfileItem(
                    icon: FontAwesomeIcons.shield,
                    title: 'Privacy Policy',
                    subtitle: 'Read our privacy policy',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout, color: Colors.red),
                  label: Text(
                    'Sign Out',
                    style: GoogleFonts.chakraPetch(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ],
      ),
    );
  }
}
