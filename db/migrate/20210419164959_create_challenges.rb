class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.integer :min_reps
      t.integer :min_weight
      t.string :skill_level
      t.integer :min_time
      t.integer :max_time
      t.string :muscle_group

      t.timestamps
    end
  end
end
