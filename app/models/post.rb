class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  has_many :comments

  validates :title, presence: true
  validates :description, presence: true
end