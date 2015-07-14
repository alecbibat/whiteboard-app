class User < ActiveRecord::Base
  has_many :threads
  has_many :comments
  has_many :user_courses
  has_many :courses, through: :user_courses
end