class ChangeDecimalToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :exercises, :record, :integer
  end
end
