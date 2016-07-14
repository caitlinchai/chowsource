Category.create(name:"Appetizers")
Category.create(name:"Soups And Salads")
Category.create(name:"Main Course")
Category.create(name:"Desserts")


User.create({name: "Linse", password: "password", email: "blank1@blank.com", location: "Houma, Louisiana", about: "My favorite food is baby cats."})
User.create({name: "Brandon", password: "password", email: "blank2@blank.com", location: "New York, New York", about: "I like all kinds of food. Please rate my recipes."})
User.create({name: "Caitlin", password: "password", email: "blank3@blank.com", location: "Seattle, Washington", about: "I like this website because it is about food."})
User.create({name: "Ron", password: "password", email: "blank4@blank.com", location: "Boston, Massachusetts", about: "Avid cook. I eat a tonne of meat every year."})
User.create({name: "Chet", password: "password", email: "blank5@blank.com", location: "Philadelphia, Pennsylvania", about: "I love this website. I collect recipes as a hobby."})

Ingredient.create(name: "Salt")
Ingredient.create(name: "Pepper")
Ingredient.create(name: "Mushrooms")
Ingredient.create(name: "Cheese")
Ingredient.create(name: "Tomatoes")

Measurement.create(name: 'cup')
Measurement.create(name: 'tsp')
Measurement.create(name: 'tbsp')


Recipe.create({name: "Carrot Coconut Soup", difficulty_level: "Expert", prep_time_hours: 1, prep_time_min: "0", directions: "Heat 1 TBS broth in a medium soup pot. Healthy Sauté onion in broth over medium heat for about 5 minutes, stirring often.", description: "The ginger and curry powder add great flavor to this easy-to-prepare soup. It's also rich in vitamin A and tastes great!", creator: "Grandma", servings: 4, category_id: 1, user_id: 2})

Recipe.create({name: "Red Wine", difficulty_level: "Beginner", prep_time_hours: 0, prep_time_min: "20", directions: "There's a lot of stuff", description: "The crimini mushrooms and tawny port gives this Barley Mushroom Soup extra flavor. This soup is a great way to enjoy the health benefits of barley.", creator: "Grandma", servings: 4, category_id: 1, user_id: 1})

Recipe.create({name: "Lentils", difficulty_level: "Intermediate", prep_time_hours: 0, prep_time_min: "30", directions: "There's a lot of stuff", description: "This tastes really, really good", creator: "Grandma", servings: 4, category_id: 2, user_id: 3})

Recipe.create({name: "Braised Ribs", difficulty_level: "Expert", prep_time_hours:3, prep_time_min: "40", directions: "There's a lot of stuff", description: "This tastes good", creator: "My Great-Great-Aunt", servings: 4, category_id: 3, user_id: 4})

Recipe.create({name: "Mushroom", difficulty_level: "Expert", prep_time_hours: 1, prep_time_min: "10", directions: "There's a lot of stuff", description: "This tastes good", creator: "Cousin, twice-removed", servings: 4, category_id: 1, user_id: 4})

Recipe.create({name: "Risotto", difficulty_level: "Beginner", prep_time_hours: 0, prep_time_min: "25", directions: "There's a lot of stuff", description: "This tastes good", creator: "Neighbor", servings: 4, category_id: 1, user_id: 1})

Recipe.create({name: "Seafood Gazpacho", difficulty_level: "Beginner", prep_time_hours: 0, prep_time_min: "10", directions: "There's a lot of stuff", description: "This tastes good", creator: "my boss", servings: 4, category_id: 2, user_id: 4})

Recipe.create({name: "Spicy Posole Soup", difficulty_level: "Intermediate", prep_time_hours: 2, prep_time_min: "40", directions: "There's a lot of stuff", description: "This tastes good", creator: "Mother Dearest", servings: 4, category_id: 3, user_id: 2})

RecipeIngredient.create(recipe_id: 1, ingredient_id: 1, measurement_id: 1, quantity: 2.0)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 2, measurement_id: 2, quantity: 2.0)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 3, measurement_id: 3, quantity: 2.0)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 2, measurement_id: 1, quantity: 3.0)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 4, measurement_id: 2, quantity: 3.0)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 3, measurement_id: 1, quantity: 3.0)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 5, measurement_id: 3, quantity: 4.0)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 4, measurement_id: 1, quantity: 4.0)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 1, measurement_id: 2, quantity: 4.0)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 3, measurement_id: 1, quantity: 5.0)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 4, measurement_id: 1, quantity: 5.0)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 2, measurement_id: 1, quantity: 5.0)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 4, measurement_id: 2, quantity: 2.0)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 5, measurement_id: 3, quantity: 2.0)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 1, measurement_id: 1, quantity: 2.0)
RecipeIngredient.create(recipe_id: 6, ingredient_id: 2, measurement_id: 2, quantity: 2.0)
RecipeIngredient.create(recipe_id: 6, ingredient_id: 5, measurement_id: 1, quantity: 2.0)
RecipeIngredient.create(recipe_id: 7, ingredient_id: 4, measurement_id: 3, quantity: 2.0)
RecipeIngredient.create(recipe_id: 8, ingredient_id: 2, measurement_id: 1, quantity: 2.0)
RecipeIngredient.create(recipe_id: 8, ingredient_id: 3, measurement_id: 2, quantity: 2.0)
RecipeIngredient.create(recipe_id: 8, ingredient_id: 1, measurement_id: 2, quantity: 2.0)

Rating.create(user_id: 1, recipe_id: 1, stars: 2.0)
Rating.create(user_id: 3, recipe_id: 2, stars: 3.0)
Rating.create(user_id: 2, recipe_id: 3, stars: 4.0)
Rating.create(user_id: 3, recipe_id: 2, stars: 5.0)
Rating.create(user_id: 1, recipe_id: 4, stars: 3.0)
Rating.create(user_id: 2, recipe_id: 5, stars: 2.0)
Rating.create(user_id: 4, recipe_id: 6, stars: 5.0)
Rating.create(user_id: 2, recipe_id: 2, stars: 1.0)
Rating.create(user_id: 5, recipe_id: 3, stars: 2.0)
Rating.create(user_id: 3, recipe_id: 7, stars: 3.0)
Rating.create(user_id: 1, recipe_id: 7, stars: 2.0)
