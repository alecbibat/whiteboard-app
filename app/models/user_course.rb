class UserCourse < ActiveRecord::Base
  has_many :users, through: :user_courses
  has_many :courses, through: :user_courses
end