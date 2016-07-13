class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  validates :name, :measurement, presence: true
end
