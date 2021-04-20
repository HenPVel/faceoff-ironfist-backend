class CreateAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :attempts do |t|
      t.integer :challenge_id
      t.integer :athlete_id
      t.string :user_description_of_attempt
      t.integer :max_weight
      t.integer :goal_time_achieved

      t.timestamps
    end
  end
end
