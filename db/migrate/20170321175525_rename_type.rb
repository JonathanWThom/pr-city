class RenameType < ActiveRecord::Migration[5.0]
  def change
    rename_column :exercises, :type, :unit
  end
end
