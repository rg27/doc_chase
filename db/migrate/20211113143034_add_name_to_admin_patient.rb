class AddNameToPatient < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :firstname, :string
    add_column :patients, :lastname, :string
  end
end
