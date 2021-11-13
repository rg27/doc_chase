class CreateAdminPatients < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_patients do |t|
      t.integer :age
      t.string :gender
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
