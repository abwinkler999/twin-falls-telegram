class AddUserTypeToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :user_type_id, default: 1
    end
  end
end
