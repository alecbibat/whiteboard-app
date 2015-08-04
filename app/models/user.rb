class User < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with EmailValidator
  has_many :posts
  has_many :comments
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :subscribed_courses
  has_many :courses, through: :subscribed_courses

  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum:6 }
end