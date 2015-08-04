class RemovePhotoAttributesFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :photo_file_name
    remove_column :posts, :photo_content_type
    remove_column :posts, :photo_file_size
    remove_column :posts, :photo_updated_at
  end
end
