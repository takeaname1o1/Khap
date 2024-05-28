import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'cName Structure B.Tech\n1st and 2nd quote (all branches)',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Civil Engineering'),
        KnowledgeText(knowledge: 'Mechanical Engineering'),
        KnowledgeText(knowledge: 'Electrical Engineering'),
        KnowledgeText(knowledge: 'Computer Science & Engineering'),
        KnowledgeText(knowledge: 'Electronics & Communications Engi..'),
        KnowledgeText(knowledge: 'Electronics & Instrumentation Engi..'),
        KnowledgeText(knowledge: 'Physics'),
        KnowledgeText(knowledge: 'Chemistry'),
        KnowledgeText(knowledge: 'Mathematics'),
        KnowledgeText(knowledge: 'Humanities'),
      ],
    );
  }
}
