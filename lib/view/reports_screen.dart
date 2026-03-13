import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Report Screen'))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(Icons.pause_presentation),
                SizedBox(width: 5),
                Text("Report Configuration"),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Report Type"),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    Text("Monthly Collection Summary"),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Filter by Property"),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    Text("All Properties"),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: Column(
                  children: [
                    Text("Start Date"),
                    Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: Row(
                          children: [
                            Text("28-02-2026"),
                            Spacer(),
                            Icon(Icons.calendar_month),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 90),
              Column(
                children: [
                  Text("End Date"),
                  Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Row(
                        children: [
                          Text("11-03-2026"),
                          Spacer(),
                          Icon(Icons.calendar_month),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.download),
                  SizedBox(width: 10),
                  Text(
                    "Generate & Download PDF",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
