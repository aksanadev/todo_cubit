import 'package:flutter/material.dart';
import 'package:todo_cubit/2_application/pages/dashboard/dashboard_page.dart';
import 'package:todo_cubit/2_application/pages/overview/overview_page.dart';
import 'package:todo_cubit/2_application/pages/settings/settings_page.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const tabs = [
    DashboardPage.pageConfig,
    OverviewPage.pageConfig,
    SettingsPage.pageConfig,
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final destinations = HomePage.tabs.map(
      (page) => NavigationDestination(icon: Icon(page.icon), label: page.name));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AdaptiveLayout(
          bottomNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.mediumAndUp: SlotLayout.from(
              key: const Key('primary-navigation-medium'),
              builder: (context) => AdaptiveScaffold.standardNavigationRail(
                  destinations: destinations
                      .map(
                        (_) => AdaptiveScaffold.toRailDestination(_),
                      )
                      .toList()),
            ),
          }),
        ),
      ),
    );
  }
}
