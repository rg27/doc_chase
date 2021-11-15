class CreateAdminOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_orders do |t|
      t.string :accession_id
      t.string :external_id
      t.string :physician
      t.integer :kit_no
      t.string :kit_type
      t.date :results_needed_by
      t.date :requisition_date
      t.date :end_date
      t.string :priority
      t.integer :turn_around_time
      t.string :medication
      t.string :allergies
      t.date :specimen_collect_date
      t.date :specimen_receive_date
      t.string :collection_method
      t.date :travel_date

      t.timestamps
    end
  end
end
