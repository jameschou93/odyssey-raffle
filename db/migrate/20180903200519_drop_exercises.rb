class DropExercises < ActiveRecord::Migration[5.1]
  def change
    drop_table :exercises
  end
end
