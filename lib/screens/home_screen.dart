import 'package:flutter/material.dart';
import 'layout_examples.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Examples'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildExampleCard(
            context,
            '1. Three Text widgets in a Row',
            'Equal spacing between text widgets',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example1Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '2. Two buttons in a Column',
            'Centered vertically and horizontally',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example2Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '3. Container with padding and margin',
            'Background color around Text widget',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example3Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '4. Profile card layout',
            'Row for picture+name, Column for details',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example4Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '5. Responsive layout with Expanded',
            'Two containers share screen width',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example5Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '6. Navigation bar with Row',
            'Icons spaced evenly',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example6Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '7. Stack with background and floating button',
            'Background image with overlay',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example7Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '8. Flexible widgets in Column',
            'Dynamic resizing on orientation change',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example8Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '9. Chat bubble UI',
            'Container with padding, margin, rounded borders',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example9Screen()),
            ),
          ),
          _buildExampleCard(
            context,
            '10. Grid-like layout',
            'Row and Column combination without GridView',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Example10Screen()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExampleCard(
    BuildContext context,
    String title,
    String description,
    VoidCallback onTap,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
