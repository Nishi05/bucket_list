import 'package:bucket_list/common/widgets/bottom_navigation.dart';
import 'package:bucket_list/features/bucket/screens/bucket_detail_screen.dart';
import 'package:bucket_list/features/bucket/screens/bucket_list_screen.dart';
import 'package:bucket_list/features/bucket/screens/create_bucket_screen.dart';
import 'package:bucket_list/features/bucket/screens/edit_bucket_screen.dart';
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
                      child: BucketListScreen(),
                    );
                  },
                  routes: [
                    GoRoute(
                      path: 'detail',
                      builder: (context, state) {
                        final id = state.extra as int;
                        return BucketDetailScreen(id: id);
                      },
                    ),
                  ]),
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
      GoRoute(
        path: '/bucket/create',
        pageBuilder: (context, state) {
          return const MaterialPage(
            fullscreenDialog: true,
            child: CreateBucketScreen(),
          );
        },
      ),
      GoRoute(
        path: '/bucket/edit',
        pageBuilder: (context, state) {
          final id = state.extra as int;
          return MaterialPage(
            fullscreenDialog: true,
            child: EditBucketScreen(
              id: id,
            ),
          );
        },
      ),
    ],
  );
}
