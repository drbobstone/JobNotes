class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :customer_ref_id, limit: 100, null: false
      t.string :customer_invoice_id, limit: 100
      t.string :internal_ref_id, limit: 100
      t.string :customer_name, limit: 100, null: false
      t.string :address, limit: 100
      t.string :city, limit: 100
      t.string :state, limit: 30 
      t.string :zip, limit: 12
      t.string :subdivision, limit: 50
      t.string :lotid, limit: 50
      t.string :job_type, limit: 50
      t.boolean :is_open, default: true
      t.double :sales_price
      t.timestamps null: false
    end
  end
end
