import 'package:bucket_list/common/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

final _key = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: '/bucket',
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _key,
        pageBuilder: (context, state, navigationShell) {
          return NoTransitionPage(
            child: BottomNavigation(navigationShell: navigationShell),
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/bucket',
                pageBuilder: (context, state) {
                  return const NoTransitionPage(
                    child: SizedBox(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/small-step',
                pageBuilder: (context, state) {
                  return const NoTransitionPage(
                    child: SizedBox(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/completed',
                builder: (context, state) {
                  return const SizedBox();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
