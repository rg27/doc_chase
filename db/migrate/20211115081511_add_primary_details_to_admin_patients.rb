class AddPrimaryDetailsToAdminPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_patients, :pid, :string
    add_column :admin_patients, :external_pid, :string
    add_column :admin_patients, :internal_id, :string
    add_column :admin_patients, :related_use, :string
    add_column :admin_patients, :payment_type, :string
    add_column :admin_patients, :document_type, :string
    add_column :admin_patients, :date_of_birth, :date
    add_column :admin_patients, :race, :string
    add_column :admin_patients, :ethnicity, :string
  end
end
