class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :measurement

  validates :quantity, :recipe, :ingredient, :measurement, presence: true
  accepts_nested_attributes_for :ingredient, :measurement

end
