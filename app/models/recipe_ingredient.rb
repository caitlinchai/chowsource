class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :measurement

  validates :recipe, :quantity, :measurement, :ingredient, presence: true
end
