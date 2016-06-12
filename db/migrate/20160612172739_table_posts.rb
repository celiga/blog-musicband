class TablePosts < ActiveRecord::Migration
  def change
    create_table :posts
    add_column :posts, :title, :string
    add_column :posts, :content, :text
    add_column :posts, :created_at, :datetime
  end
end
