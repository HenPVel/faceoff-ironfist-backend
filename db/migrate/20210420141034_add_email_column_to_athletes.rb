class AddEmailColumnToAthletes < ActiveRecord::Migration[6.1]
  def change
    add_column :athletes, :email, :string
  end
end
