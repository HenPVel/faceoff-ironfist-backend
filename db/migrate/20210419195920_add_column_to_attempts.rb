class AddColumnToAttempts < ActiveRecord::Migration[6.1]
  def change
    add_column :attempts, :proof, :string
  end
end
