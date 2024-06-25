import 'package:book_summary/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.email, color: Colors.black),
            onPressed: () {
              // Handle action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Good Morning, Nikhil',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle daily summary
              },
              child:Text('Free daily summary'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Categories you\'re interested in',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.auto_awesome, size: 50),
                    Text('Productivity'),
                  ],
                ),
                const Column(
                  children: [
                    Icon(Icons.leaderboard, size: 50),
                    Text('Leadership'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Today for you',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const BookSummaryCard(
              title: 'What the Most Successful People Do Before Breakfast',
              description:
                  'A short guide to making over your mornings and life',
            ),
            const BookSummaryCard(
              title: 'The 12 Week Year',
              description:
                  'Get more done in 12 weeks than others do in 12 months',
            ),
            const Spacer(),
            const Text(
              'By continuing, you agree to our Privacy Policy and Terms & Conditions',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'For you',
            backgroundColor: primaryColor,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
            
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // Handle navigation bar tap
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}

class BookSummaryCard extends StatelessWidget {
  final String title;
  final String description;

  const BookSummaryCard({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        leading: const Icon(Icons.book),
        onTap: () {
          // Handle book summary tap
        },
      ),
    );
  }
}
