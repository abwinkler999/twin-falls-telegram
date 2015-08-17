class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :text
      t.integer :discussion_thread_id
      t.integer :user_id
      t.timestamps
    end
  end
end
