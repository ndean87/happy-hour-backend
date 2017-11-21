class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.integer :rating
      t.string :address
      t.string :state
      t.string :city
      t.integer :zipcode
      t.string :phone_number
      t.string :neighborhood
      t.float :latitude
      t.float :longitude
    end
  end
end
