class CreateSpecials < ActiveRecord::Migration[5.1]
  def change
    create_table :specials do |t
      t.string :day
      t.string :special
      t.string :time
      t.integer :venue_id
    end
  end
end
