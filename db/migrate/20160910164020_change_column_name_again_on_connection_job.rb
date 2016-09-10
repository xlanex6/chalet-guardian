class ChangeColumnNameAgainOnConnectionJob < ActiveRecord::Migration[5.0]
  def change
    rename_column :connection_jobs, :connection_date, :connect_date
  end
end
