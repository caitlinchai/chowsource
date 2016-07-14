class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe

  validates :user, uniqueness: { scope: :recipe, message:"only one rating per recipe"}
  validates :recipe, presence: true
end
