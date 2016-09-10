class ChangeColumnNameOnConnectionJob < ActiveRecord::Migration[5.0]
  def change
    rename_column :connection_jobs, :conect_date, :connection_date
  end
end
