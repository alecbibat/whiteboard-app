class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  has_many :comments

  has_attached_file :photo, :styles => { :small => "150x150>" }, :url => "/assets/posts/:id/:style/:basename.:extension", :path => ":rails_root/public/assets/posts/:id/:style/:basename.:extension"

  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  validates :title, presence: true
  validates :description, presence: true
end