class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :num_hours_at_work
      t.integer :salary

      t.timestamps
    end
  end
end
