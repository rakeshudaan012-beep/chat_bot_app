import 'package:flutter/material.dart';

class AppConstance {
  // Curated color palette - dark theme ke saath match karta hai
  static const Color _blue = Color(0xFF4A90E2);
  static const Color _purple = Color(0xFF8B5CF6);
  static const Color _pink = Color(0xFFEC4899);
  static const Color _orange = Color(0xFFF59E0B);
  static const Color _green = Color(0xFF10B981);
  static const Color _red = Color(0xFFEF4444);
  static const Color _teal = Color(0xFF14B8A6);
  static const Color _indigo = Color(0xFF6366F1);
  static const Color _rose = Color(0xFFF43F5E);
  static const Color _cyan = Color(0xFF06B6D4);

  static final List<Map<String, dynamic>> defaultQues = [
    {
      'title': '🔥 Most Popular',
      'ques': [
        {
          'Icons': Icons.auto_awesome_rounded,
          'colors': _purple,
          'ques': 'What is Artificial Intelligence?',
        },
        {
          'Icons': Icons.sentiment_very_satisfied_rounded,
          'colors': _orange,
          'ques': 'Tell me a funny joke',
        },
        {
          'Icons': Icons.psychology_rounded,
          'colors': _blue,
          'ques': 'Explain Machine Learning in simple words',
        },
        {
          'Icons': Icons.cloud_rounded,
          'colors': _teal,
          'ques': 'How does climate change work?',
        },
      ],
    },
    {
      'title': '📈 Trending',
      'ques': [
        {
          'Icons': Icons.rocket_launch_rounded,
          'colors': _pink,
          'ques': 'Latest trends in technology 2026',
        },
        {
          'Icons': Icons.currency_bitcoin_rounded,
          'colors': _orange,
          'ques': 'Should I invest in crypto?',
        },
        {
          'Icons': Icons.smart_toy_rounded,
          'colors': _purple,
          'ques': 'Best AI tools for productivity',
        },
        {
          'Icons': Icons.electric_car_rounded,
          'colors': _green,
          'ques': 'Are electric vehicles worth it?',
        },
      ],
    },
    {
      'title': '💻 Coding',
      'ques': [
        {
          'Icons': Icons.code_rounded,
          'colors': _blue,
          'ques': 'Explain Flutter state management',
        },
        {
          'Icons': Icons.bug_report_rounded,
          'colors': _red,
          'ques': 'How to debug code effectively?',
        },
        {
          'Icons': Icons.storage_rounded,
          'colors': _indigo,
          'ques': 'Difference between SQL and NoSQL',
        },
        {
          'Icons': Icons.api_rounded,
          'colors': _teal,
          'ques': 'What is REST API?',
        },
      ],
    },
    {
      'title': '📚 Education',
      'ques': [
        {
          'Icons': Icons.school_rounded,
          'colors': _purple,
          'ques': 'How to study effectively?',
        },
        {
          'Icons': Icons.language_rounded,
          'colors': _blue,
          'ques': 'Best way to learn English',
        },
        {
          'Icons': Icons.calculate_rounded,
          'colors': _orange,
          'ques': 'Explain Pythagoras theorem',
        },
        {
          'Icons': Icons.science_rounded,
          'colors': _green,
          'ques': 'How does photosynthesis work?',
        },
      ],
    },
    {
      'title': '💼 Business',
      'ques': [
        {
          'Icons': Icons.trending_up_rounded,
          'colors': _green,
          'ques': 'How to start a business?',
        },
        {
          'Icons': Icons.account_balance_rounded,
          'colors': _indigo,
          'ques': 'Best ways to save money',
        },
        {
          'Icons': Icons.campaign_rounded,
          'colors': _pink,
          'ques': 'Digital marketing strategies',
        },
        {
          'Icons': Icons.handshake_rounded,
          'colors': _orange,
          'ques': 'How to negotiate a salary?',
        },
      ],
    },
    {
      'title': '🎨 Creative',
      'ques': [
        {
          'Icons': Icons.edit_note_rounded,
          'colors': _pink,
          'ques': 'Write a short story about space',
        },
        {
          'Icons': Icons.lightbulb_rounded,
          'colors': _orange,
          'ques': 'Give me creative business ideas',
        },
        {
          'Icons': Icons.palette_rounded,
          'colors': _purple,
          'ques': 'How to improve drawing skills?',
        },
        {
          'Icons': Icons.music_note_rounded,
          'colors': _rose,
          'ques': 'Write song lyrics about love',
        },
      ],
    },
    {
      'title': '🏃 Health',
      'ques': [
        {
          'Icons': Icons.fitness_center_rounded,
          'colors': _red,
          'ques': 'Best workout for beginners',
        },
        {
          'Icons': Icons.restaurant_rounded,
          'colors': _green,
          'ques': 'Healthy diet plan for weight loss',
        },
        {
          'Icons': Icons.bedtime_rounded,
          'colors': _indigo,
          'ques': 'How to improve sleep quality?',
        },
        {
          'Icons': Icons.self_improvement_rounded,
          'colors': _teal,
          'ques': 'Benefits of meditation',
        },
      ],
    },
    {
      'title': '✈️ Travel',
      'ques': [
        {
          'Icons': Icons.flight_rounded,
          'colors': _cyan,
          'ques': 'Best places to visit in India',
        },
        {
          'Icons': Icons.luggage_rounded,
          'colors': _orange,
          'ques': 'Travel packing checklist',
        },
        {
          'Icons': Icons.beach_access_rounded,
          'colors': _teal,
          'ques': 'Top beach destinations',
        },
        {
          'Icons': Icons.savings_rounded,
          'colors': _green,
          'ques': 'How to travel on a budget?',
        },
      ],
    },
    {
      'title': '🍔 Food',
      'ques': [
        {
          'Icons': Icons.local_pizza_rounded,
          'colors': _red,
          'ques': 'Easy pizza recipe at home',
        },
        {
          'Icons': Icons.cake_rounded,
          'colors': _pink,
          'ques': 'How to bake a chocolate cake?',
        },
        {
          'Icons': Icons.coffee_rounded,
          'colors': _orange,
          'ques': 'Best coffee brewing methods',
        },
        {
          'Icons': Icons.eco_rounded,
          'colors': _green,
          'ques': 'Healthy vegetarian recipes',
        },
      ],
    },
    {
      'title': '🎬 Entertainment',
      'ques': [
        {
          'Icons': Icons.movie_rounded,
          'colors': _purple,
          'ques': 'Top movies to watch in 2026',
        },
        {
          'Icons': Icons.sports_esports_rounded,
          'colors': _blue,
          'ques': 'Best mobile games right now',
        },
        {
          'Icons': Icons.menu_book_rounded,
          'colors': _indigo,
          'ques': 'Recommend a good book to read',
        },
        {
          'Icons': Icons.headphones_rounded,
          'colors': _rose,
          'ques': 'Popular podcasts to listen',
        },
      ],
    },
  ];
}