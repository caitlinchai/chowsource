class Category < ActiveRecord::Base
  has_many :recipes
  has_many :users, through: :recipes
  validates :name, presence: true

  def top_five
    self.recipes.sort{ |x, y| y.true_rating <=> x.true_rating }[0..4]
  end
end
