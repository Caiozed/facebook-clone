class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :comment_id
      t.text :content
      t.string :author


      t.timestamps
    end
    add_index :posts, :user_id
  end
end
