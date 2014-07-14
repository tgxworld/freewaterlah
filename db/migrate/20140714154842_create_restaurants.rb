class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_address
      t.integer :postal_code
      t.string :website_url
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
