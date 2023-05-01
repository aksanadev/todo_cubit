import 'package:flutter/material.dart';
import 'package:todo_cubit/2_application/core/page_config.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage(pag, {super.key});

  static const pageConfig = PageConfig(
    icon: Icons.dashboard,
    name: 'Dashboard',
    child: DashboardPage(),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
