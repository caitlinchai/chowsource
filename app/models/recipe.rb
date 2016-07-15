class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :ratings, dependent: :destroy
  has_attached_file :image, :default_url => 'default.jpg', :path => ':rails_root/public:url'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, :difficulty_level, :directions, presence: true
  validates :description, :creator, :servings, :category, presence: true
  validates :category, uniqueness:{scope: [:user, :category], message: "only one recipe per category per user"}

  DIFFICULTY = ['Beginner', 'Intermediate', 'Expert']
  TIME = ['minutes', 'hours']


  def average_rating
    if self.ratings(:stars).empty?
      return 0
    else
      return self.ratings.average(:stars).round(2).to_f
    end
  end

  def true_rating
    if Rating.all.length/5 <= self.ratings.length
      return self.ratings.average(:stars).round(2).to_f
    else
      return 0
    end
  end

end
