import 'package:flutter/material.dart';

class TabBarViewSection extends StatelessWidget {
  final TabController tabController;
  const TabBarViewSection({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TabBarView(
        controller: tabController,
        children: [
          Stepper(
            steps: [
              Step(
                title:
                    const Text('Today', style: TextStyle(color: Colors.white)),
                content: Row(
                  children: const [],
                ),
              ),
            ],
          ),
          Stepper(
            steps: [
              Step(
                title: const Text('Tommorow',
                    style: TextStyle(color: Colors.white)),
                content: Row(
                  children: const [],
                ),
              ),
              Step(
                title: const Text('Tommorow',
                    style: TextStyle(color: Colors.white)),
                content: Row(
                  children: const [],
                ),
              ),
            ],
          ),
          Stepper(
            steps: [
              Step(
                title: const Text('Day after',
                    style: TextStyle(color: Colors.white)),
                content: Row(
                  children: const [],
                ),
              ),
            ],
          ),
          Stepper(
            steps: [
              Step(
                title: const Text('Yes', style: TextStyle(color: Colors.white)),
                content: Row(
                  children: const [],
                ),
              ),
            ],
          ),
          Stepper(
            steps: [
              Step(
                title: const Text('Yes', style: TextStyle(color: Colors.white)),
                content: Row(
                  children: const [],
                ),
              ),
            ],
          ),
          Stepper(
            steps: [
              Step(
                title: const Text('Yes', style: TextStyle(color: Colors.white)),
                content: Row(
                  children: const [],
                ),
              ),
            ],
          ),
          Stepper(
            steps: [
              Step(
                title: const Text('Yes', style: TextStyle(color: Colors.white)),
                content: Row(
                  children: const [],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
