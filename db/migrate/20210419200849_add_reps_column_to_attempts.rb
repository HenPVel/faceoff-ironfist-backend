class AddRepsColumnToAttempts < ActiveRecord::Migration[6.1]
  def change
    add_column :attempts, :reps, :integer
  end
end
