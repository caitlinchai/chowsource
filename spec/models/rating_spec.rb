require 'rails_helper'

RSpec.describe Rating, type: :model do
  let(:user){User.create(name: "Linse", password: "password", email: "blank1@blank.com", location: "Houma, Louisiana", about: "Cu postea laboramus liberavisse eum, movet noster lucilius qui et.")}

  let(:category){Category.create(name:"food")}

  let(:recipe){Recipe.create(name: "10-Minute Huevos Rancheros", difficulty_level: "Beginner", prep_time_hours: 0, prep_time_min: 20, directions: "Poach eggs. Heat beans in a skillet while eggs are cooking. Remove beans from heat and mix in olive oil, lemon juice, salt and pepper Add a pinch of cayenne for spicy beans. Place beans on plate, top with poached eggs, avocado, salsa, cheese and cilantro.", description: "Huevos rancheros don't have to take a long time to prepare. Try this easy-to-prepare version for a breakfast treat you can make on a work day!",creator: "Grandma", servings: 4, category_id: category.id, user_id: user.id)}

  let(:rating){Rating.create(user_id:user.id, recipe_id: recipe.id, stars:5.0)}

  describe ".user" do
    it "belongs to a user" do
      rating = Rating.create(user_id:user.id, recipe_id: recipe.id, stars:5.0)
      expect(rating.user).to eq user
    end
  end

  describe ".recipe" do
    it "belongs to a recipe" do
      expect(rating.recipe).to eq recipe
    end
  end
end
