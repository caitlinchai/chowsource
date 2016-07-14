class User < ActiveRecord::Base
  has_many :recipes, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_secure_password
  validates :name, presence:true
  validates :about, length: {maximum: 1000}
  validates :email, presence:true, uniqueness:true
  validates :password, length: {minimum: 8, maximum: 50}, allow_nil: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

end
