class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :email_address
      t.string :logo
      t.string :phone_number
      t.string :address
      t.string :sponsor_name
      t.string :restaurant_name

      t.timestamps

    end
  end
end
