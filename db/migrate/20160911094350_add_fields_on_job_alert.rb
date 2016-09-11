class AddFieldsOnJobAlert < ActiveRecord::Migration[5.0]
  def change
    add_column :job_alerts, :photo , :string
    add_column :job_alerts, :description , :text
  end
end
