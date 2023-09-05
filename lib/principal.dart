import 'package:flutter/material.dart';
import 'package:widgets/list_languages.dart';

class PrincipalWidget extends StatelessWidget {
  const PrincipalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: const ListLanguageWidget(),
    );
  }
}
