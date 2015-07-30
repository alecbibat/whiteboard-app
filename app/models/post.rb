class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  validates :title, presence: true
  validates :description, presence: true
end