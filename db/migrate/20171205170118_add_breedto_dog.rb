class AddBreedtoDog < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :breed, :string
  end
end
