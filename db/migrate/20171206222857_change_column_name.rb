class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :homes, :type, :apt_or_house
  end
end
