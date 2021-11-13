class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :pid
      t.string :externalPid
      t.references :user, foreign_key: true
      t.string :relatedUuse
      t.string :paymentType
      t.string :documentType
      t.datetime :dateOfBirth
      t.integer :age
      t.string :gender
      t.string :race
      t.string :ethnicity
      t.string :street
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.integer :phone
      t.integer :mobile
      t.string :county
      t.string :email

      t.timestamps
    end
  end
end
