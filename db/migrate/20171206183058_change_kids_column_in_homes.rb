class ChangeKidsColumnInHomes < ActiveRecord::Migration[5.1]
  def change
    change_column :homes, :kids, :boolean, :default => false
  end
end
