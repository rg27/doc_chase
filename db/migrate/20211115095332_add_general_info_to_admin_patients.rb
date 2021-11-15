class AddGeneralInfoToAdminPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_patients, :street, :string
    add_column :admin_patients, :street2, :string
    add_column :admin_patients, :city, :string
    add_column :admin_patients, :state, :string
    add_column :admin_patients, :zip, :string
    add_column :admin_patients, :country, :string
    add_column :admin_patients, :phone, :integer
    add_column :admin_patients, :mobile, :integer
    add_column :admin_patients, :county, :string
  end
end
