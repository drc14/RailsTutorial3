class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.string :user
      t.string :restaurant
      t.integer :rating
      t.integer :food_rating
      t.integer :service_rating

      t.timestamps
    end
  end
end
