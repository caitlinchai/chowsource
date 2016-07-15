require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:user){User.create(name: "Linse", password: "password", email: "blank1@blank.com", location: "Houma, Louisiana", about: "Cu postea laboramus liberavisse eum, movet noster lucilius qui et.")}
  
  let(:recipe_author){User.create(name: "Brandon", password: "password", email: "blank2@blank.com", location: "New York, New York", about: "Vix et iriure aperiam labores, sea et consul accommodare. Ea est iusto vulputate, qui ea doming singulis platonem, cu option urbanitas per. Ut nonumy consectetuer per. Hinc iracundia efficiantur et duo.")}

  let(:category){Category.create(name:"food")}

  let(:recipe){Recipe.create(name: "10-Minute Huevos Rancheros", difficulty_level: "Beginner", prep_time_hours: 0, prep_time_min: 20, directions: "Poach eggs. Heat beans in a skillet while eggs are cooking. Remove beans from heat and mix in olive oil, lemon juice, salt and pepper Add a pinch of cayenne for spicy beans. Place beans on plate, top with poached eggs, avocado, salsa, cheese and cilantro.", description: "Huevos rancheros don't have to take a long time to prepare. Try this easy-to-prepare version for a breakfast treat you can make on a work day!",creator: "Grandma", servings: 4, category_id: category.id, user_id: recipe_author.id)}

  describe ".user" do
    it "belongs to a user" do
      expect(recipe.user).to eq recipe_author
    end
  end

  describe ".category" do
    it "belongs to a category" do
      expect(recipe.category).to eq category
    end
  end

  describe ".ratings" do
    it "has many ratings" do
      recipe.ratings.create(user_id:user.id, stars:5.0)
      expect(recipe.ratings.count > 0).to be true
    end
  end

  describe ".difficulty_level" do
    it "has a difficulty_level" do
      expect(recipe.difficulty_level).to eq "Beginner"
    end
  end

  describe ".servings" do
    it "has servings" do
      expect(recipe.servings).to be_an(Integer)
    end
  end

  describe ".creator" do
    it "has a creator value" do
      expect(recipe.creator).to be_a(String)
    end
  end
  
  describe ".description" do
    it "has a description" do
      expect(recipe.description).to be_a(String)
    end
  end

  describe ".average_rating" do
    it "returns 0 if recipe has no ratings" do
      expect(recipe.average_rating).to eq 0
    end

    it "returns average is recipe has one or more ratings" do
      recipe.ratings.create(user_id:user.id, stars:5.0)
      recipe.ratings.create(user_id:recipe_author.id, stars:3.0)

      expect(recipe.average_rating).to eq 4.0
    end
  end


end
