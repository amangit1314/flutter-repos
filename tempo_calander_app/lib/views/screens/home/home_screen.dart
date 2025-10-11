import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/utils.dart';
import '../event/add_event_screen.dart';
import 'components/tab_bar_section.dart';
import 'components/tab_bar_view_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;
  DateTime today = DateTime.now();

  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    today = day;
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();

    return Scaffold(
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.blue,
        child: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const AddEventScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        title: RichText(
          text: TextSpan(
            // text: today.toString().split(" ")[0],
            text: '${months[now.month - 1]} '.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: today.toString().split(" ")[0].split("-")[0],
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.grey[800],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (ctx) => Column(
                  children: [
                    TableCalendar(
                      focusedDay: today,
                      firstDay: DateTime.utc(2019, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 30),
                      // change colors of the dates in calander

                      headerStyle: const HeaderStyle(
                        titleCentered: true,
                        titleTextStyle:
                            TextStyle(color: Colors.white, fontSize: 20),
                        formatButtonVisible: false,
                      ),
                      availableGestures: AvailableGestures.all,
                      onDaySelected: _onDaySelected,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: const Center(
                          child: Text('Jump to date'),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(
              Icons.calendar_today,
              size: 18,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 10,
                top: 10,
              ),
              sliver: SliverFillRemaining(
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Mon',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Tue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Wed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Thu',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Fri',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Sat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Sun',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      TabBarSection(tabController: tabController),
                      const SizedBox(height: 20),
                      TabBarViewSection(tabController: tabController),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
