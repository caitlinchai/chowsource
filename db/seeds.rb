Category.create(name:"Appetizers")
Category.create(name:"Soup And Salad")
Category.create(name:"Main Course")
Category.create(name:"Dessert")




User.create({name: "Linse", password: "password", email: "blank1@blank.com", location: "DBC", about: "Here's an about"})
User.create({name: "Brandom", password: "password2", email: "blank2@blank.com", location: "DBC", about: "I like food"})
User.create({name: "Caitlin", password: "password3", email: "blank3@blank.com", location: "DBC", about: "I like this website"})
User.create({name: "Ron", password: "password4", email: "blank4@blank.com", location: "NY", about: "What is this website?"})
User.create({name: "Chet", password: "password5", email: "blank5@blank.com", location: "PA", about: "I love this website"})

salt = Ingredient.create(name: "Salt", measurement: "1 cup")
pepper = Ingredient.create(name: "Pepepr", measurement: "1 cup")
mushrooms = Ingredient.create(name: "Mushrooms", measurement: "1 cup")
cheese = Ingredient.create(name: "Cheese", measurement: "1 cup")
tomatos = Ingredient.create(name: "Tomatos", measurement: "1 cup")

Recipe.create({name: "Carrot Coconut Soup", difficulty_level: "Super Hard", prep_time: "30 minutes", directions: "Heat 1 TBS broth in a medium soup pot. Healthy Sauté onion in broth over medium heat for about 5 minutes, stirring often.", description: "The ginger and curry powder add great flavor to this easy-to-prepare soup. It's also rich in vitamin A and tastes great!", ingredients: [Ingredient.create(name: "Cheese", measurement: "1 cup"), Ingredient.create(name: "Tomatos", measurement: "1 cup")], creator: "I made this", servings: 4, category_id: 1, user_id: 2})

Recipe.create({name: "Red Wine", difficulty_level: "Not super Hard", prep_time: "A long time", directions: "There's a lot of stuff", description: "The crimini mushrooms and tawny port gives this Barley Mushroom Soup extra flavor. This soup is a great way to enjoy the health benefits of barley.", ingredients: [salt, pepper, mushrooms], creator: "I made this", servings: 4, category_id: 1, user_id: 1})
Recipe.create({name: "Lentils", difficulty_level: "Not sure", prep_time: "A long time", directions: "There's a lot of stuff", description: "This tastes good", ingredients: [mushrooms, cheese], creator: "I made this", servings: 4, category_id: 1, user_id: 3})
Recipe.create({name: "Braised Ribs", difficulty_level: "Ridiculous", prep_time: "A long time", directions: "There's a lot of stuff", description: "This tastes good", ingredients: [salt, pepper], creator: "I made this", servings: 4, category_id: 1, user_id: 4})
Recipe.create({name: "Mushroom", difficulty_level: "Hard", prep_time: "A long time", directions: "There's a lot of stuff", description: "This tastes good", ingredients: [salt, pepper], creator: "I made this", servings: 4, category_id: 1, user_id: 5})
Recipe.create({name: "Risotto", difficulty_level: "Easy", prep_time: "A long time", directions: "There's a lot of stuff", description: "This tastes good", ingredients: [salt, pepper], creator: "I made this", servings: 4, category_id: 1, user_id: 3})
Recipe.create({name: "Seafood Gazpacho", difficulty_level: "Real Easy", prep_time: "A long time", directions: "There's a lot of stuff", description: "This tastes good", ingredients: [tomatos, pepper, cheese], creator: "I made this", servings: 4, category_id: 1, user_id: 4})
Recipe.create({name: "Spicy Posole Soup", difficulty_level: "Medium", prep_time: "A long time", directions: "There's a lot of stuff", description: "This tastes good", ingredients: [salt, pepper, mushrooms, cheese, tomatos], creator: "I made this", servings: 4, category_id: 1, user_id: 2})
