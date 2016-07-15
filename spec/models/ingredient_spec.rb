require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  let(:ingredient){Ingredient.create(name:"flour")}
  
  describe ".name" do
    it "has name attribute" do
      expect(ingredient.name).to eq "flour"
    end
  end

  describe ".recipes" do
    it " has recipes" do
      ingredient.recipes.create(name: "Chicken Potpie", difficulty_level: "Expert", directions: "1.Lorem, 2.Ipsum", description: "Yummy yum", creator: "Mom", servings: 1, category_id: 1, user_id: 1, prep_time_hours: 1, prep_time_min: 10)
      expect(ingredient.recipes).not_to be_empty
    end
  end
  
end
