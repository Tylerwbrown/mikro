class RemovePlaceFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :place
  end
end
