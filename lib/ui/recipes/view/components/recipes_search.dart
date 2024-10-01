import 'package:flutter/material.dart';

class RecipesSearch extends StatefulWidget {
  void Function(String searchText) onSearch;

  RecipesSearch({
    super.key,
    required this.onSearch,
  });

  @override
  State<RecipesSearch> createState() => _RecipesSearchState();
}

class _RecipesSearchState extends State<RecipesSearch> {
  String? _text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: TextEditingController(text: _text),
            decoration: InputDecoration(
              labelText: "Mots clé",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
            ),
            onChanged: (text) => setState(() {
              _text = text;
            }),
          ),
        ),
        SizedBox(
          width: 32.0,
        ),
        ElevatedButton(
          onPressed: () => widget.onSearch(_text ?? ""),
          child: Text("Rechercher"),
        ),
      ],
    );
  }
}
