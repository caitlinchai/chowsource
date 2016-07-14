class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(name_params)
    @ingredient.save
  end

  def show
  end

private

def name_params
  params.require(:ingredient).permit(:name)
end

end
