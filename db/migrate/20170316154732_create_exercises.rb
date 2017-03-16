class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.decimal :record
      t.string :type
      t.date :date
    end
  end
end
