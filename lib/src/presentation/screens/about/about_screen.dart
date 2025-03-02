import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/developer_info.dart';
import 'components/social_links.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'About',
          style: GoogleFonts.chakraPetch(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            // App Logo
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.textColor, width: 2),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/app_img/logo.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // App Name
            Text(
              'BrixFind',
              style: GoogleFonts.chakraPetch(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 8),
            // Version
            Text(
              'Version 1.0.0',
              style: GoogleFonts.chakraPetch(
                fontSize: 14,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 32),
            // Developer Section
            const DeveloperInfo(),
            const SizedBox(height: 32),
            // App Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'BrixFind es una aplicación inmobiliaria moderna diseñada para ayudarte a encontrar tu propiedad ideal de manera centralizada y eficiente. Desarrollada con Flutter.',
                textAlign: TextAlign.center,
                style: GoogleFonts.chakraPetch(
                  fontSize: 16,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Social Links
            const SocialLinks(),
            const SizedBox(height: 40),
            // Copyright
            Text(
              '© 2024 BrixFind. All rights reserved.',
              style: GoogleFonts.chakraPetch(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
