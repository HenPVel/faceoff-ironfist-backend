class CreateAthletes < ActiveRecord::Migration[6.1]
  def change
    create_table :athletes do |t|
      t.string :name
      t.integer :age
      t.integer :years_of_experience
      t.string :reason_for_training
      t.string :ethnicity
      t.string :body_type
      t.string :skill_level
      t.integer :weight_in_lbs
      t.integer :height_in_inches
      t.boolean :preexisting_injuries
      t.string :username
      t.string :password
      t.boolean :active

      t.timestamps
    end
  end
end
