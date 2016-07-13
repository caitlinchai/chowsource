 class Measurement < ActiveRecord::Base
  has_many :recipes_ingredients
end
