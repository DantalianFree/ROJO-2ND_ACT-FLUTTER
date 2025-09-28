import 'package:flutter/material.dart';

// Example 1: Three Text widgets in a Row with equal spacing
class Example1Screen extends StatelessWidget {
  const Example1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 1: Row with Equal Spacing'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'First',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Second',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Third',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Example 2: Two buttons in a Column, centered vertically and horizontally
class Example2Screen extends StatelessWidget {
  const Example2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 2: Centered Column Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button 1'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button 2'),
            ),
          ],
        ),
      ),
    );
  }
}

// Example 3: Container with padding, margin, and background color
class Example3Screen extends StatelessWidget {
  const Example3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 3: Container with Styling'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: const Text(
            'This is a styled container with padding, margin, and background color!',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// Example 4: Profile card layout
class Example4Screen extends StatelessWidget {
  const Example4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 4: Profile Card'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Row for profile picture and name
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue.shade300,
                      child: const Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Software Developer',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Column for details
                const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('mdrojo.chmsu@gmail.com'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+639284520312'),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Talisay City, Negros'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Example 5: Responsive layout using Expanded
class Example5Screen extends StatelessWidget {
  const Example5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 5: Responsive with Expanded'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red.shade200,
              child: const Center(
                child: Text(
                  'Container 1\n(1/3 width)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green.shade200,
              child: const Center(
                child: Text(
                  'Container 2\n(2/3 width)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example 6: Navigation bar using Row with icons
class Example6Screen extends StatelessWidget {
  const Example6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 6: Navigation Bar'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey.shade100,
              child: const Center(
                child: Text(
                  'Main Content Area',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(Icons.home, 'Home', true),
                _buildNavItem(Icons.search, 'Search', false),
                _buildNavItem(Icons.favorite, 'Favorites', false),
                _buildNavItem(Icons.person, 'Profile', false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isSelected) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.blue : Colors.grey,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

// Example 7: Stack with background image and floating button
class Example7Screen extends StatelessWidget {
  const Example7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 7: Stack Layout'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade300,
                  Colors.purple.shade300,
                ],
              ),
            ),
            child: const Center(
              child: Text(
                'Background Content',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Floating button overlay
          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.add,
                color: Colors.blue,
              ),
            ),
          ),
          // Additional overlay content
          Positioned(
            top: 100,
            left: 20,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Overlay Card',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example 8: Flexible widgets in Column
class Example8Screen extends StatefulWidget {
  const Example8Screen({super.key});

  @override
  State<Example8Screen> createState() => _Example8ScreenState();
}

class _Example8ScreenState extends State<Example8Screen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 8: Flexible Widgets'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            icon: Icon(_isExpanded ? Icons.compress : Icons.expand),
          ),
        ],
      ),
      body: Column(
        children: [
          // Fixed height container
          Container(
            height: 100,
            color: Colors.red.shade200,
            child: const Center(
              child: Text(
                'Fixed Height Container',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Flexible container that can resize
          Flexible(
            flex: _isExpanded ? 3 : 1,
            child: Container(
              color: Colors.green.shade200,
              child: const Center(
                child: Text(
                  'Flexible Container\n(Tap expand button to resize)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          // Another flexible container
          Flexible(
            flex: _isExpanded ? 1 : 2,
            child: Container(
              color: Colors.blue.shade200,
              child: const Center(
                child: Text(
                  'Another Flexible Container',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example 9: Chat bubble UI
class Example9Screen extends StatelessWidget {
  const Example9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 9: Chat Bubble UI'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Received message
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Text(
                  'Hello! How are you doing today?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            // Sent message
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade500,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: const Text(
                  'I\'m doing great! Thanks for asking.',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            // Another received message
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Text(
                  'That\'s wonderful to hear! 😊',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Example 10: Grid-like layout using Row and Column
class Example10Screen extends StatelessWidget {
  const Example10Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 10: Grid-like Layout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // First row
            Row(
              children: [
                Expanded(
                  child: _buildGridItem('Item 1', Colors.red.shade200),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildGridItem('Item 2', Colors.green.shade200),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildGridItem('Item 3', Colors.blue.shade200),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Second row
            Row(
              children: [
                Expanded(
                  child: _buildGridItem('Item 4', Colors.orange.shade200),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildGridItem('Item 5', Colors.purple.shade200),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildGridItem('Item 6', Colors.teal.shade200),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Third row
            Row(
              children: [
                Expanded(
                  child: _buildGridItem('Item 7', Colors.pink.shade200),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildGridItem('Item 8', Colors.indigo.shade200),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildGridItem('Item 9', Colors.amber.shade200),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(String title, Color color) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
