class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :ratings, dependent: :destroy
  validates :name, :difficulty_level, :prep_time, :directions, presence: true
  validates :description, :creator, :servings, :category, presence: true
end
