require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  let(:recipe_author){User.create(name: "Brandon", password: "password", email: "blank2@blank.com", location: "New York, New York", about: "Vix et iriure aperiam labores, sea et consul accommodare. Ea est iusto vulputate, qui ea doming singulis platonem, cu option urbanitas per. Ut nonumy consectetuer per. Hinc iracundia efficiantur et duo.")}

  let(:category){Category.create(name:"food")}

  let(:recipe){Recipe.create(name: "10-Minute Huevos Rancheros", difficulty_level: "Beginner", prep_time_hours: 0, prep_time_min: 20, directions: "Poach eggs. Heat beans in a skillet while eggs are cooking. Remove beans from heat and mix in olive oil, lemon juice, salt and pepper Add a pinch of cayenne for spicy beans. Place beans on plate, top with poached eggs, avocado, salsa, cheese and cilantro.", description: "Huevos rancheros don't have to take a long time to prepare. Try this easy-to-prepare version for a breakfast treat you can make on a work day!",creator: "Grandma", servings: 4, category_id: category.id, user_id: recipe_author.id)}

  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "assigns the all recipes as @recipes" do
      get :index
      expect(assigns(:recipes)).to include recipe
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

   describe "GET #show" do
    it "responds with status code 200" do
      get :show, {id:recipe.id}
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "assigns the recipe to @recipe" do
      get :show, {id:recipe.id}
      expect(assigns(:recipe)).to be_instance_of(Recipe)
    end

    it "renders the :show template" do
      get :show, {id:recipe.id}
      expect(response).to render_template("show")
    end
  end


end
