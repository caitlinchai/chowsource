require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category){Category.create(name:"Breakfast")}
  let(:recipe){category.recipes.create(name: "Spaghetti", difficulty_level: "Beginner", directions: "Boil pasta. Put on sauce. Get fat.", description: "Very tasty.", creator: "Italians", servings: 4, category_id: 3, user_id: 1, prep_time_hours: 1, prep_time_min: 10)}

  describe ".recipes" do
    it "returns all recipes in the category" do
      expect(category.recipes).to include(recipe) 
    end
  end

  describe ".name" do
    it "returns the name of the category" do
      expect(category.name).to eq "Breakfast"
    end
  end

end
