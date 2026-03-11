import 'package:flutter/material.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Properties",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: properties.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          properties[index]['property name'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.apartment, color: Colors.blue),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Lakeside, Pokhara"),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Total Rooms"), Text("10")],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Occupancy"), Text("10/10")],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("This Month"), Text("67%")],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.green.withValues(alpha: 0.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Center(child: Text("Collected")),
                              Text(properties[index]['Rs']),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.red.withValues(alpha: 0.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Pending",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Rs.500",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.check, color: Colors.green),
                        Text("3 Paid"),
                        Spacer(),
                        Icon(Icons.cancel, color: Colors.red),
                        Text("7 Pending"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

List properties = [
  {
    'property name': "Lake View",
    'location': "Lakeside,Pokhara",
    'Total Roooms': "10",
    'Occupancy': "10/10",
    'This Month': "67%",
    'Rs': "Rs.1000",
    'Pennding': "Rs.500",
  },
  {
    'property name': "Mountain View",
    'location': "Lakeside,Pokhara",
    'Total Roooms': "10",
    'Occupancy': "10/10",
    'This Month': "67%",
    'Rs': "Rs.5000",
    'Pennding': "Rs.1500",
  },
  {
    'property name': "LakeView",
    'location': "Lakeside,Pokhara",
    'Total Roooms': "10",
    'Occupancy': "10/10",
    'This Month': "67%",
    'Rs': "Rs.1000",
    'Pennding': "Rs.500",
  },
  {
    'property name': "LakeView",
    'location': "Lakeside,Pokhara",
    'Total Roooms': "10",
    'Occupancy': "10/10",
    'This Month': "67%",
    'Rs': "Rs.1000",
    'Pennding': "Rs 200",
  },
  {
    'property name': "LakeView",
    'location': "Lakeside,Pokhara",
    'Total Roooms': "10",
    'Occupancy': "10/10",
    'This Month': "67%",
    'Rs': "Rs.1000",
    'Pennding': "Rs.500",
  },
  {
    'property name': "LakeView",
    'location': "Lakeside,Pokhara",
    'Total Roooms': "10",
    'Occupancy': "10/10",
    'This Month': "67%",
    'Rs': "Rs.1000",
    'Pennding': "Rs.500",
  },
  {
    'property name': "LakeView",
    'location': "Lakeside,Pokhara",
    'Total Roooms': "10",
    'Occupancy': "10/10",
    'This Month': "67%",
    'Rs': "Rs.1000",
    'Pennding': "Rs.500",
  },
];
