import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_cubit/2_application/core/go_router_obs.dart';

GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final routes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  observers: [
    GoRouterObs(),
  ],
  initialLocation: '/home/start',
  routes: [
    GoRoute(
      path: '/home/start',
      builder: (context, state) => Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.push('/home/settings');
                },
                child: const Text('go to Settings')),
            TextButton(
                onPressed: () {
                  if (context.canPop()) {
                    context.pop();
                  } else {
                    context.push('/home/settings');
                  }
                },
                child: const Text('Go back'))
          ],
        ),
      ),
    ),
    GoRoute(
      path: '/home/settings',
      builder: (context, state) => Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.push('/home/start');
                },
                child: const Text('go to Start')),
            TextButton(
                onPressed: () {
                  if (context.canPop()) {
                    context.pop();
                  } else {
                    context.push('/home/start');
                  }
                },
                child: const Text('Go back'))
          ],
        ),
      ),
    ),
  ],
);
