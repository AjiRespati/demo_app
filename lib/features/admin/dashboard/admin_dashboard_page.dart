import 'package:demo_app/core/responsive/responsive_builder.dart';
import 'package:demo_app/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

import 'pages/dashboard_page.dart';
import 'pages/products_page.dart';
import 'pages/settings_page.dart';
import 'pages/users_page.dart';
import 'widgets/admin_bottom_nav.dart';
import 'widgets/admin_sidebar.dart';

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  int selectedIndex = 0;
  bool sidebarCollapsed = false;

  final pages = const [
    DashboardPage(),
    UsersPage(),
    ProductsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, info) {
        return GlassPage(
          background: const Background(),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: info.isMobile
                ? GlassCard(
                    margin: const EdgeInsets.all(16),
                    child: pages[selectedIndex],
                  )
                : Row(
                    children: [
                      AdminSidebar(
                        selectedIndex: selectedIndex,
                        collapsed: sidebarCollapsed,
                        onToggle: () {
                          setState(() {
                            sidebarCollapsed = !sidebarCollapsed;
                          });
                        },
                        onSelected: (value) {
                          setState(() {
                            selectedIndex = value;
                          });
                        },
                      ),

                      Expanded(
                        child: GlassCard(
                          margin: const EdgeInsets.all(24),
                          child: pages[selectedIndex],
                        ),
                      ),
                    ],
                  ),
            bottomNavigationBar: info.isMobile
                ? AdminBottomNav(
                    selectedIndex: selectedIndex,
                    onSelected: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                  )
                : null,
          ),
        );
      },
    );
  }
}
