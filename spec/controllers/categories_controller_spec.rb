require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:category) { Category.create(name:"Lunch") }

  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "assigns all categories to @categories" do
      get :index
      expect(assigns(:categories)).to include category
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns a single category to @category" do
      get :show, {id:category.id}
      expect(assigns(:category)).to be_an_instance_of(Category)
    end

    it "assigns all recipes in category to @recipes" do
      user = User.create(name: "Linse", password: "password", email: "blank1@blank.com", location: "Houma, Louisiana", about: "Cu postea laboramus liberavisse eum, movet noster lucilius qui et.")
      recipe = Recipe.create(name: "10-Minute Huevos Rancheros", difficulty_level: "Beginner", prep_time_hours: 0, prep_time_min: 20, directions: "Poach eggs. Heat beans in a skillet while eggs are cooking. Remove beans from heat and mix in olive oil, lemon juice, salt and pepper Add a pinch of cayenne for spicy beans. Place beans on plate, top with poached eggs, avocado, salsa, cheese and cilantro.", description: "Huevos rancheros don't have to take a long time to prepare. Try this easy-to-prepare version for a breakfast treat you can make on a work day!",creator: "Grandma", servings: 4, category_id: category.id, user_id: user.id)

      get :show, {id:category.id}
      expect(assigns(:recipes)).to include recipe
    end

    it "renders the :show template" do
      get :show,  {id:category.id}
      expect(response).to render_template("show")
    end
  end
end
