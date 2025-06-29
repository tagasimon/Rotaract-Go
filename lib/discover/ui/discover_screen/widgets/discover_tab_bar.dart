import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiscoverTabBar extends ConsumerWidget {
  final TabController tabController;
  const DiscoverTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TabBar(
        controller: tabController,
        tabs: const [
          Tab(text: "Clubs"),
          Tab(text: "Events"),
          Tab(text: "Projects"),
          // TODO Add News Back
          // Tab(text: "News"),
        ],
        labelColor: Colors.purple.shade600,
        unselectedLabelColor: Colors.grey.shade600,
        indicatorColor: Colors.purple.shade600,
        indicatorWeight: 3,
        labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }
}
