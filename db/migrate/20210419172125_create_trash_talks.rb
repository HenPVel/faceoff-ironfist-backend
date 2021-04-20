class CreateTrashTalks < ActiveRecord::Migration[6.1]
  def change
    create_table :trash_talks do |t|
      t.integer :athlete_id
      t.integer :challenge_id
      t.string :comment

      t.timestamps
    end
  end
end
