class LoyaltyPoints < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :loyalty, :number
  end
end
