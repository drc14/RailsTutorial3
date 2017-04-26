class AddFeatureHashToRestaurant < ActiveRecord::Migration[5.0]
  def change
  	add_index :restaurants, :email, unique: true
  	add_column :restaurants, :password_digest, :string

    add_column :restaurants, :cuisine_type, :string
    add_column :restaurants, :payment_type, :string
    add_column :restaurants, :monday_hours, :string
    add_column :restaurants, :tuesday_hours, :string
    add_column :restaurants, :wednesday_hours, :string
    add_column :restaurants, :thursday_hours, :string
    add_column :restaurants, :friday_hours, :string
    add_column :restaurants, :saturday_hours, :string
    add_column :restaurants, :sunday_hours, :string
    add_column :restaurants, :parking, :string
    add_column :restaurants, :latitude, :decimal
    add_column :restaurants, :longitude, :decimal
    add_column :restaurants, :address, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :country, :string
    add_column :restaurants, :fax, :string
    add_column :restaurants, :zip, :string
    add_column :restaurants, :smoking_area, :string
    add_column :restaurants, :alcohol, :string
    add_column :restaurants, :dress_code, :string
    add_column :restaurants, :accessibility, :string
    add_column :restaurants, :price, :string
    add_column :restaurants, :url, :string
    add_column :restaurants, :Rambience, :string
    add_column :restaurants, :franchise, :decimal
    add_column :restaurants, :area, :string
    add_column :restaurants, :other_services, :string
  end
end 