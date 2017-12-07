class AddLinkToDog < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :link, :string
  end
end
