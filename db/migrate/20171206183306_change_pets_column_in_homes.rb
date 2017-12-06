class ChangePetsColumnInHomes < ActiveRecord::Migration[5.1]
  def change
    change_column :homes, :pets, :boolean, :default => false
  end
end
