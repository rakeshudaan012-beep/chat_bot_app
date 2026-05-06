import 'dart:math';
import 'package:flutter/material.dart';

class AppConstance{
  static final List<Map<String,dynamic>> defaultQues=[
    {
      'title':'Most Popular',
      'ques':[
        {
          'Icons':Icons.ac_unit,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'What is Ai ?'
        },
        {
          'Icons':Icons.person,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'Tell me a Joke ?'
        },
        {
          'Icons':Icons.account_tree_outlined,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'Explain me the concept is Machine Learning?'
        },
        {
          'Icons':Icons.cloud,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'How Does Climate changes? '
        }
      ]
    },
    {
      'title':'Treading',
      'ques':[
        {
          'Icons':Icons.ac_unit,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'What is Ai ?'
        },
        {
          'Icons':Icons.person,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'Tell me a Joke ?'
        },
        {
          'Icons':Icons.account_tree_outlined,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'Explain me the concept is Machine Learning?'
        },
        {
          'Icons':Icons.cloud,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'How Does Climate changes? '
        }
      ]
    },
    {
      'title':'What is Instagram ?',
      'ques':[
        {
          'Icons':Icons.ac_unit,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'What is Ai ?'
        },
        {
          'Icons':Icons.person,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'Tell me a Joke ?'
        },
        {
          'Icons':Icons.account_tree_outlined,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'Explain me the concept is Machine Learning?'
        },
        {
          'Icons':Icons.cloud,
          'colors':Colors.primaries[Random().nextInt(Colors.primaries.length-1)],
          'ques':'How Does Climate changes? '
        }
      ]
    }
  ];
}