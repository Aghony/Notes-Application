import 'package:flutter/material.dart';
import 'package:notes_app/pages/gallery_page.dart';

class DetailPage extends StatelessWidget {
  final int index;
  const DetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'lorem Item ${index + 1}',
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            const Spacer(),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => const GalleryPage()),
                );
            }, 
            child: const Text('Open Gallery')
            ),
          ],
        ),
      ),
    );
  }
}
