import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget {
  final String? day;
  final bool isSelected;
  final TabController tabController;

  const TabBarSection({
    Key? key,
    this.day,
    this.isSelected = false,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      // isScrollable: true,
      controller: tabController,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.blue,
      ),
      tabs: [
        Tab(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isSelected ? Colors.blue : Colors.transparent,
            child: Center(
              child: Text(
                day ?? '1',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Tab(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isSelected ? Colors.blue : Colors.transparent,
            child: Center(
              child: Text(
                day ?? '2',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Tab(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isSelected ? Colors.blue : Colors.transparent,
            child: Text(
              day ?? '3',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Tab(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isSelected ? Colors.blue : Colors.transparent,
            child: Text(
              day ?? '4',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Tab(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isSelected ? Colors.blue : Colors.transparent,
            child: Text(
              day ?? '5',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Tab(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isSelected ? Colors.blue : Colors.transparent,
            child: Text(
              day ?? '6',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Tab(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isSelected ? Colors.blue : Colors.transparent,
            child: Text(
              day ?? '7',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
