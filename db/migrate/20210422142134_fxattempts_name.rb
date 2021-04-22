class FxattemptsName < ActiveRecord::Migration[6.1]
  def change
    rename_column :attempts, :max_weight, :weight
    rename_column :attempts, :goal_time_achieved, :time
  end
end
