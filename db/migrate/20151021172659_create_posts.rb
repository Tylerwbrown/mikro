class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :context
      t.string :user_id
      t.string :integer

      t.timestamps
    end
    add_index :posts, [:user_id, :created_at]
  end
end
