class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
