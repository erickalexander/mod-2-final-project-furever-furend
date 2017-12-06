class AddJobIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :job_id, :integer
  end
end
