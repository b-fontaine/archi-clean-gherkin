import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../recipes_bloc.dart';
import '../recipes_event.dart';
import '../recipes_state.dart';
import 'components/recipe_card.dart';
import 'components/recipes_search.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  List<Widget> getRecipes(RecipesState state) {
    List<Widget> list = [];
    if (state is LoadedRecipesState) {
      for (var recipe in state.recipes) {
        list.add(SizedBox(
          width: 150,
          height: 300,
          child: Center(
            child: RecipeCard(
              title: recipe.title,
              image: recipe.imageUrl,
              subtitle: recipe.restaurant,
            ),
          ),
        ));
      }
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesBloc, RecipesState>(
      buildWhen: (prev, state) {
        if (prev.runtimeType != state.runtimeType) return true;
        if (state is LoadedRecipesState && prev is LoadedRecipesState) {
          return prev.recipes != state.recipes;
        }
        return false;
      },
      builder: (context, state) {
        if (state is InitialRecipesState) {
          context.read<RecipesBloc>().add(RecipesStartingEvent());
        }
        var recipes = getRecipes(state);
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RecipesSearch(
                  onSearch: (searchText) => context
                      .read<RecipesBloc>()
                      .add(SearchRecipesEvent(searchText: searchText)),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => recipes[index],
                  separatorBuilder: (_, __) => const SizedBox(
                    height: 16,
                  ),
                  itemCount: recipes.length,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
