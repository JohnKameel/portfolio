import 'package:flutter/material.dart';

import 'custom_project_card_mobile.dart';

class FeaturedWorkMobileSection extends StatelessWidget {
  FeaturedWorkMobileSection({super.key});

  final List _post = [
    {
      'imageUrl': 'asset/todo.png',
      'text': 'Todo App',
      'date': '2025',
      'des': '- I developed a cross-platform mobile app to manage daily tasks\n'
          '- Implemented features like task creation, editing, completion tracking, and date/time scheduling\n'
          '- Used Riverpod for state management and SQLite for local data storage\n'
          '- Focused on clean architecture, reusable widgets, and responsive UI design',
    },
    {
      'imageUrl': 'asset/bookly.png',
      'text': 'Bookly App',
      'date': '2025',
      'des': '- Developed a Flutter mobile app for discovering and reading books\n'
          '- Integrated APIs to fetch and display a wide collection of books\n'
          '- Users can view book details, read free books, and download PDFs\n'
          '- Implemented animations and interactive UI using Flutter’s Bloc architecture\n'
          '- Ensured a clean, modern user interface and smooth UX across devices',
    },
    {
      'imageUrl': 'asset/groceries.png',
      'text': 'Groceries App',
      'date': '2025',
      'des': '- Developed a cross-platform mobile app to manage grocery shopping\n'
          '- Implemented features like viewing groceries, adding items to the cart, and calculating the total price\n'
          '- Focused on clean architecture, reusable widgets, and responsive UI design',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _post.length,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: CustomProjectCardMobile(
          imageUrl: _post[index]['imageUrl'],
          text: _post[index]['text'],
          date: _post[index]['date'],
          des: _post[index]['des'],
        ),
      );
    },);
  }
}
