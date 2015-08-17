class Course < ActiveRecord::Base
  has_many :posts
  has_many :assignments
  has_many :subscribed_courses
  has_many :users, through: :subscribed_courses

  validates :name, presence: true, uniqueness: true
  validates :department, presence: true, length: { is: 4 }
  validates :number, presence: true, length: { is: 4 }, numericality: { only_integer: true }
end