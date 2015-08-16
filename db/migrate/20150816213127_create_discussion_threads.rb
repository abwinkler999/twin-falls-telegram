class CreateDiscussionThreads < ActiveRecord::Migration
  def change
    create_table :discussion_threads do |t|
      t.string :name
      t.timestamps
    end
  end
end
