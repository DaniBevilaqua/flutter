import 'package:flutter/material.dart';
import 'package:widgets/language.dart';

class ListLanguageWidget extends StatefulWidget {
  const ListLanguageWidget({super.key});

  @override
  State<ListLanguageWidget> createState() => _ListLanguageWidgetState();
}

class _ListLanguageWidgetState extends State<ListLanguageWidget> {
  List<Language> linguagens = [
    Language("Android Nativo", "Linguagem C, Java e Kotlin", "1"),
    Language("Ios Nativo", "Linguagem Objective-C e Swift", "2"),
    Language("Flutter", "Linguagem DART", "3"),
    Language("React Native", "Linguagem Typescript e Javascript", "4"),
  ];

  List<ChoiceChip> _buildChips() {
    return linguagens
        .map((language) => ChoiceChip(
            label: Text(language.name),
            selected: language.selected,
            onSelected: (value) {
              setState(() {
                language.selected = value;
              });
            }))
        .toList();
  }

  List<Card> _buildCards() {
    return linguagens
        .where((language) => language.selected)
        .map((language) => Card(
              child: ListTile(
                leading: Text(language.id),
                title: Text(language.name),
                subtitle: Text(language.description),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Wrap(
            spacing: 10,
            children: _buildChips(),
          ),
        ),
        Expanded(
            child: ListView(
          children: _buildCards(),
        ))
      ],
    );
  }
}
