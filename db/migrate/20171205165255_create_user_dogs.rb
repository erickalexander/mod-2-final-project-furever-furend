class CreateUserDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_dogs do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :dog, foreign_key: true

      t.timestamps
    end
  end
end
