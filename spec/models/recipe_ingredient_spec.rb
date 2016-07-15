require 'rails_helper'

RSpec.describe RecipeIngredient, type: :model do
  let(:user){User.create(name:"Brandon", email:"brandon@gmail.com", about:"I am a Brandon.", password:"password")}

  let(:category){Category.create(name:"Breakfast")}

  let(:recipe){Recipe.create(name: "10-Minute Huevos Rancheros", difficulty_level: "Beginner", prep_time_hours: 0, prep_time_min: 20, directions: "Poach eggs. Heat beans in a skillet while eggs are cooking. Remove beans from heat and mix in olive oil, lemon juice, salt and pepper Add a pinch of cayenne for spicy beans. Place beans on plate, top with poached eggs, avocado, salsa, cheese and cilantro.", description: "Huevos rancheros don't have to take a long time to prepare. Try this easy-to-prepare version for a breakfast treat you can make on a work day!", creator: "Grandma", servings: 4, category_id: category.id, user_id: user.id)}

  let(:ingredient){Ingredient.create(name:"flour")}

  let(:measurement){Measurement.create(name:"cups")}

  let(:recipe_ingredient){RecipeIngredient.create(recipe_id:recipe.id, ingredient_id:ingredient.id, measurement_id:measurement.id, quantity:"10")}
 
  describe "it belongs to a recipe" do
    it ".recipe" do
      expect(recipe_ingredient.recipe).to eq recipe
    end
  end

  describe "it belongs to an ingredient" do
     it ".ingredient" do
      expect(recipe_ingredient.ingredient).to eq ingredient
    end
  end

  describe "it belongs to a measurement" do
     it ".measurement" do
      expect(recipe_ingredient.measurement).to eq measurement
    end
  end

end
