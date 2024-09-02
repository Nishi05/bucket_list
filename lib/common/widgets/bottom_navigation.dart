import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(label: 'Bucket', icon: Icon(Icons.event_note)),
          NavigationDestination(
              label: 'スモールステップ', icon: Icon(Icons.view_timeline)),
          NavigationDestination(label: '達成済', icon: Icon(Icons.timeline)),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
