import 'package:archi_clean_gherkin/injection.dart';
import 'package:archi_clean_gherkin/ui/recipes/view/recipes_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../recipes_bloc.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RecipesBloc>(),
      child: const RecipeView(),
    );
  }
}
