class Course < ActiveRecord::Base
  has_many :user_courses
  has_many :users, through: :user_courses
  has_many :posts

  validates :name, presence: true, uniqueness: true
  validates :department, presence: true, length: { is: 4 }
  validates :number, presence: true, length: { is: 4 }, numericality: { only_integer: true }
end