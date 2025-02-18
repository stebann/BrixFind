import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/widgets/circular_button.dart';
import 'package:flutter/material.dart';

class CustomMainBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomMainBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: preferredSize.height,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularButton(
            icon: Icons.menu,
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          Column(
            children: [
              Text(
                'Your Location',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'New York, USA',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
          CircularButton(
            icon: Icons.notifications_none_outlined,
            onPressed: () {
              // Acción para el botón de notificaciones
            },
          ),
        ],
      ),
    );
  }
}
