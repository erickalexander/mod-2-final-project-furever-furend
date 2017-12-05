class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :city_or_suburb
      t.string :type
      t.integer :num_of_rooms
      t.integer :num_of_occupants
      t.boolean :kids
      t.boolean :pets

      t.timestamps
    end
  end
end
