class RemoveDatefieldToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column(:users, :available_start_time)
    remove_column(:users, :available_end_time)
  end
end
