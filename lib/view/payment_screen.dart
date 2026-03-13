import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("App Payment"))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              children: [
                Icon(Icons.payment),
                SizedBox(width: 15),
                Text("Payment Details"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text("Select Property *"),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Choose a property"),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text("Select Tenant *"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Select property first"),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text("Amount *"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [Text("Enter amount")]),
              ),
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text("Payment Date"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [Text("11-03-2026")]),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text("Payment Method *"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Online Transfer"),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text("Notes (Optional)"),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 25,
                ),
                child: Text("Add any additional notes"),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Record Payment",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(child: Text("Cancel")),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
