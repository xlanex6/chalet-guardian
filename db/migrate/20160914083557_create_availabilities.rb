class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.datetime :available_start_time
      t.datetime :available_end_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
