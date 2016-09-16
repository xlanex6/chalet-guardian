class ChangeDatetimeIntoDate < ActiveRecord::Migration[5.0]
  def change
    change_column :availabilities, :available_start_time, :date
    change_column :availabilities, :available_end_time, :date

    change_column :job_alerts, :start_date, :date
    change_column :job_alerts, :end_date, :date
  end
end
