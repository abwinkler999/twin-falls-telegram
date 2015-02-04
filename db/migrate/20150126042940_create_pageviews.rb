class CreatePageviews < ActiveRecord::Migration
  def change
    create_table :pageviews do |t|
      t.string :ip
      t.string :url
      t.timestamps
    end
  end
end
