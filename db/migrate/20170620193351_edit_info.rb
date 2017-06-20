class EditInfo < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :phone_number, :decimal
    add_column :users, :role, :string, null: false, default: "diner"
  end
end
