import 'package:flutter/material.dart';
import 'package:healthapp/screens/health_needs.dart';
import 'package:healthapp/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, Rajib"),
            Text(
              "How are you feeling today?",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          // Upcoming card
          const UpcomingCard(),
          const SizedBox(height: 20,),
          Text("Health Needs", style: Theme.of(context).textTheme.titleLarge,),

          // Health Needs
          HealthNeeds(),

          // Nearby doctors
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubble_ellipses_outline),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
