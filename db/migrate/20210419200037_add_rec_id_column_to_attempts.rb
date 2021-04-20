class AddRecIdColumnToAttempts < ActiveRecord::Migration[6.1]
  def change
    add_column :attempts, :receiver_id, :integer
  end
end
