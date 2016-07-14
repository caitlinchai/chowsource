class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :ratings, dependent: :destroy
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, :difficulty_level, :directions, presence: true
  validates :description, :creator, :servings, :category, presence: true
  validates :category, uniqueness:{scope: [:user, :category], message: "only one recipe per category per user"}

  include PgSearch
  multisearchable :against => [:name, :directions]
  DIFFICULTY = ['Beginner', 'Intermediate', 'Expert']
  TIME = ['minutes', 'hours']

  def average_rating
    # binding.pry
    if self.ratings(:stars).empty?
      return 0
    else
      return self.ratings.average(:stars).round(2).to_f
    end
  end
end
