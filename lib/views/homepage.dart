import 'package:dubug_app/views/news_screen.dart';
import 'package:dubug_app/views/report_screen.dart';
import 'package:dubug_app/views/tools_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/navigation_provider.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavIndexProvider);

    final screens = [
      NewsScreen(),
      ReportScreen(),
      ToolsScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug 6.0'),
        backgroundColor: Colors.red[400],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          ref.read(bottomNavIndexProvider.notifier).state = index;
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_document), label: 'Segnalazioni'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Utilities'),
        ],
      ),
    );
  }
}
