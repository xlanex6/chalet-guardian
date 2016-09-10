class AddFielsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :company, :string
    add_column :users, :website, :string
    add_column :users, :description, :text
    add_column :users, :available_start_time, :datetime
    add_column :users, :available_end_time, :datetime
    add_reference :users, :job_categorie, foreign_key: true
  end
end
