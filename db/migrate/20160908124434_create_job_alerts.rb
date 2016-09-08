class CreateJobAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :job_alerts do |t|
      t.references :job_categorie, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :address
      t.references :ski_resort, foreign_key: true

      t.timestamps
    end
  end
end
