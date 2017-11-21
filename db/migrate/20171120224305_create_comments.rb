class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :comments
      t.string :user_name
      t.integer :venue_id
    end
  end
end
