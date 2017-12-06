class AddHomeIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :home_id, :integer
  end
end
