class CreatePrivateTrashTalks < ActiveRecord::Migration[6.1]
  def change
    create_table :private_trash_talks do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :conversation_id
      t.integer :challenge_id
      t.string :comment

      t.timestamps
    end
  end
end
