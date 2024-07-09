import 'package:freezed_annotation/freezed_annotation.dart';
part 'meal.freezed.dart';
part 'meal.g.dart';

@freezed
class Meals with _$Meals {
  const factory Meals({idMeal,
    strMeal,
    strDrinkAlternate,
    strCategory,
    strArea,
    strInstructions,
    strMealThumb,
    strTags,
    strYoutube,
    strIngredient1,
    strIngredient2,
    strIngredient3,
    strIngredient4,
    strIngredient5,
    strIngredient6,
    strIngredient7,
    strIngredient8,
    strIngredient9,
    strIngredient10,
    strIngredient11,
    strIngredient12,
    strIngredient13,
    strSource,
    strImageSource,
    strCreativeCommonsConfirmed,
    dateModified,
    strIngredient14,
    strIngredient15,
    strIngredient16,
    strIngredient17,
    strIngredient18,
    strIngredient19,
    strIngredient20}) = _Meals;

  factory Meals.fromJson(Map<String, dynamic> json) => _$MealsFromJson(json);
}
