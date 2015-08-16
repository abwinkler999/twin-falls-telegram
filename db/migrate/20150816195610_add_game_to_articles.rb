class AddGameToArticles < ActiveRecord::Migration
  def change
  	change_table :articles do |t|
  		t.integer :game_id, default: 1
  	end
  end
end
