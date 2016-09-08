class CreateConnectionJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :connection_jobs do |t|
      t.references :job_alert, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :conect_date

      t.timestamps
    end
  end
end
