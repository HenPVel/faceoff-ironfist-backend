class AddColumnToTrashTalks < ActiveRecord::Migration[6.1]
  def change
    add_column :trash_talks, :receiver_id, :integer
  end
end
