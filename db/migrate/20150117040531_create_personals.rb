class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.text :body
      t.string :signed
      t.string :ip

      t.timestamps
    end
  end
end
