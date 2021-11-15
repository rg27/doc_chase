class AddUserReferencesToAdminPatients < ActiveRecord::Migration[5.2]
  def change
    add_reference :admin_patients, :user, foreign_key: true
  end
end
