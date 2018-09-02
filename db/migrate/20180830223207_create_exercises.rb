class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :exercise_name

      t.timestamps
    end
  end
end
