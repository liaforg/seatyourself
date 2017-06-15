class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :email
      t.integer :capacity
      t.integer :hours
      t.string :cuisine
      
      t.timestamps
    end
  end
end
