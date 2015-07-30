class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :user_courses
  has_many :courses, through: :user_courses

  has_secure_password validations: false
end