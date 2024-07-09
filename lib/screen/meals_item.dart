import 'package:flutter/material.dart';
import 'package:poopaye_paint/model/meal.dart';

class MealsItem extends StatelessWidget {
  MealsItem({super.key, required this.meals});

  final Meals meals;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 150,
      child: Row(
        children: [
          if (meals.strMealThumb != null && meals.strMealThumb!.isNotEmpty)
            Image.network(
              meals.strMealThumb!,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meals.strMeal ?? "",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  meals.strInstructions ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "Tags: ${meals.strTags}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Ingredient: ${meals.strIngredient1}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
