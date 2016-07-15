require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){User.create(name:"Brandon", email:"brandon@gmail.com", about:"I am a Brandon.", password:"password")}
  let(:invalid_email){User.create(name:"Brandon", about:"I am a Brandon.", password:"password")}
  let(:invalid_name){User.create(email:"brandon@gmail.com", about:"I am a Brandon.", password:"password")}
  let(:invalid_password){User.create(name:"Brandon", email:"brandon@gmail.com", about:"I am a Brandon.")} 
 
  describe "has attributes" do
    it ".name" do
      expect(user.name).to eq "Brandon"
    end

    it ".email" do
      expect(user.email).to eq "brandon@gmail.com"
    end
  
    it ".recipes" do
      recipe = user.recipes.create(name: "Spaghetti", difficulty_level: "Beginner", directions: "Boil pasta. Put on sauce. Get fat.", description: "Very tasty.", creator: "Italians", servings: 4, category_id: 3, prep_time_hours: 1, prep_time_min: 10)
      expect(user.recipes).not_to be_empty
    end
  end

  describe "should have required attributes" do

    it "must have an email" do
      expect(invalid_email.errors).not_to be_empty
    end

    it "must have a name" do
      expect(invalid_name.errors).not_to be_empty
    end
  
    it "must have a password" do
      expect(invalid_password.errors).not_to be_empty
    end
  end

end
