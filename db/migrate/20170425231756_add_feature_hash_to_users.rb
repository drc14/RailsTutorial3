class AddFeatureHashToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cuisine_type, :string
    add_column :users, :payment_type, :string
    add_column :users, :latitude, :decimal
    add_column :users, :longitude, :decimal
    add_column :users, :the_geom_meter, :Nominal
    add_column :users, :smoker, :string
    add_column :users, :drink_level, :string
    add_column :users, :dress_preference, :string
    add_column :users, :ambience, :string
    add_column :users, :transport, :string
    add_column :users, :marital_status, :string
    add_column :users, :hijos, :string
    add_column :users, :birth_year, :decimal
    add_column :users, :interest, :string
    add_column :users, :personality, :string
    add_column :users, :religion, :string
    add_column :users, :activity, :string
    add_column :users, :color, :string
    add_column :users, :weight, :decimal
    add_column :users, :budget, :string
    add_column :users, :height, :decimal
  end
end