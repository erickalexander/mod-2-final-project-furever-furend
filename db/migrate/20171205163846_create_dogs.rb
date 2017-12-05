class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :personality
      t.string :energy_level
      t.boolean :children_friendly
      t.boolean :dog_friendly
      t.string :size
      t.integer :barking_level

      t.timestamps
    end
  end
end
