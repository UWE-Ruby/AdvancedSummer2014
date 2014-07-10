class CreatePosts < ActiveRecord::Migration
  enable_extension :hstore
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :picture
      t.integer :author_id
      t.boolean :published
      t.hstore :tags

      t.timestamps
    end

    add_index :posts, :title
    add_index :posts, :tags
    add_index :posts, :author_id
  end
end
