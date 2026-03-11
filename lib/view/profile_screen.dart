import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              // backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            const SizedBox(height: 16),
            const Text("Ashutosh Gurung", style: TextStyle(fontSize: 25)),
            const SizedBox(height: 8),
            const Text(
              "ashutosh@example.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // Quick Stats Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard("Properties", "5", Icons.house, Colors.green),
                _buildStatCard("Tenants", "40", Icons.people, Colors.blue),
                _buildStatCard(
                  "Collected",
                  "Rs 95,000",
                  Icons.attach_money,
                  Colors.orange,
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Action Buttons
            _buildActionButton("Edit Profile", Icons.edit, Colors.green, () {
              // Navigate to edit profile screen
            }),
            _buildActionButton("Change Password", Icons.lock, Colors.blue, () {
              // Navigate to change password screen
            }),
            _buildActionButton("Settings", Icons.settings, Colors.orange, () {
              // Navigate to settings screen
            }),
            _buildActionButton("Logout", Icons.logout, Colors.red, () {
              // Handle logout
            }),
          ],
        ),
      ),
    );
  }

  // Quick Stats Card
  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 100,
        child: Column(
          children: [
            Icon(icon, size: 30, color: color),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  // Action Button
  Widget _buildActionButton(
    String text,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onTap,
        icon: Icon(icon),
        label: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
