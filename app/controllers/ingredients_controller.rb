class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    binding.pry
    @ingredient = Ingredient.new(name_params)
    @ingredient.save
    # render :'ingredients/create'
  end

  def show
    binding.pry 
  end

private

def name_params
  params.require(:ingredient).permit(:name)
end

end
