import 'package:flutter/material.dart';
import 'package:property_management_app/widget/widgets.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Rental Dashboard",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blue,
      //   onPressed: () {},
      //   child:  Icon(Icons.add),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: dashboardCard(
                    title: "Total Properties",
                    value: "5",
                    icon: Icons.house,
                    color: Colors.blue,
                    
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: dashboardCard(
                    title: "Collected",
                    value: "Rs 1,20,000",
                    icon: Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: dashboardCard(
                    title: "Pending",
                    value: "Rs 30,000",
                    icon: Icons.warning,
                    color: Colors.red,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: dashboardCard(
                    title: "Tenants",
                    value: "${tenants.length}",
                    icon: Icons.people,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Property Summary",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: tenants.length,

                itemBuilder: (context, index) {
                  final tenant = tenants[index];

                  return Card(
                    color: Colors.white,
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 6),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(16),

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.blue[100],
                            child: const Icon(Icons.home, color: Colors.blue),
                          ),

                          const SizedBox(width: 15),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tenant["name"]!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 5),

                                Text(
                                  tenant["room"]!,
                                  style: TextStyle(color: Colors.grey[700]),
                                ),

                                Text(
                                  tenant["rent"]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),

                            decoration: BoxDecoration(
                              color: tenant["status"] == "Paid"
                                  ? Colors.green
                                  : Colors.red,

                              borderRadius: BorderRadius.circular(20),
                            ),

                            child: Text(
                              tenant["status"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, String>> tenants = [
  {'room': "Room 101", "name": "House 1", "rent": "Rs.8000", "status": "Paid"},
  {
    'room': "Room 102",
    "name": "House 2",
    "rent": "Rs.18000",
    "status": "Pending",
  },
  {'room': "Room 103", "name": "House 3", "rent": "Rs.28000", "status": "Paid"},
  {'room': "Room 104", "name": "House 4", "rent": "Rs.8000", "status": "Paid"},
  {
    'room': "Room 105",
    "name": "House 5 5",
    "rent": "Rs.8000",
    "status": "Pending",
  },
  {'room': "Room 106", "name": "House 6", "rent": "Rs.8000", "status": "Paid"},
];
