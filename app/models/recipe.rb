class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :ratings, dependent: :destroy
  validates :name, :difficulty_level, :directions, presence: true
  validates :description, :creator, :servings, :category, presence: true

  DIFFICULTY = ['Beginner', 'Intermediate', 'Expert']
  TIME = ['minutes', 'hours']

  def average_rating
    self.ratings.average(:stars).round(2).to_f if self.ratings.average(:stars) else 0
  end
end
