import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/checkbox_option.dart';
import 'components/settings_section.dart';
import 'components/switch_option.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Settings',
          style: GoogleFonts.chakraPetch(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SettingsSection(
            title: 'Property Display',
            children: [
              CheckboxOption(
                title: 'Show Property Status',
                subtitle: 'Display if property is for sale/rent',
                value: true,
              ),
              CheckboxOption(
                title: 'Show Agent Info',
                subtitle: 'Display agent details in property card',
                value: true,
              ),
              CheckboxOption(
                title: 'Show Property Age',
                subtitle: 'Display when the property was built',
                value: false,
              ),
            ],
          ),
          const SettingsSection(
            title: 'Search Settings',
            children: [
              SwitchOption(
                title: 'Auto-complete Search',
                subtitle: 'Show suggestions while typing',
                value: true,
              ),
              SwitchOption(
                title: 'Search History',
                subtitle: 'Save recent searches',
                value: true,
              ),
              SwitchOption(
                title: 'Nearby Properties',
                subtitle: 'Show properties near your location',
                value: true,
              ),
            ],
          ),
          const SettingsSection(
            title: 'Data Usage',
            children: [
              SwitchOption(
                title: 'High Quality Images',
                subtitle: 'Load HD images on Wi-Fi only',
                value: true,
              ),
              SwitchOption(
                title: 'Auto-update Listings',
                subtitle: 'Refresh property data automatically',
                value: true,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextButton(
              onPressed: () {
                // Implement cache clearing
              },
              child: Text(
                'Clear App Cache',
                style: GoogleFonts.chakraPetch(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
