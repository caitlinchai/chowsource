class RatingsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create!(name_params)
  end

private

def name_params
  params.require(:ingredient).permit(:name)
end

end
