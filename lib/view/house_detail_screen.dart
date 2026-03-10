import 'package:flutter/material.dart';

class HouseDetailScreen extends StatelessWidget {
  const HouseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Tenants & Payments")),
          bottom: const TabBar(
            tabs: [
              Tab(text: "All Tenants"),
              Tab(text: "Due Payments"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: All Tenants
            ListView.builder(
              itemCount: 3,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text('Tenant ${index + 1}'),
                  ),
                );
              },
            ),

            // Tab 2: Due Payments
            ListView.builder(
              itemCount: 3,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text('Due Payment ${index + 1}'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

