class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.int :id
      t.string, :customer_ref_id
      t.string :limit
      t.string :100
      t.string, :customer_invoice_id
      t.string :limit
      t.string :100
      t.string :customer_name
      t.string :string,
      t.string :limit
      t.string :100
      t.string :address
      t.string :string,
      t.string :limit
      t.string :100
      t.string :city
      t.string :string,
      t.string :limit
      t.string :100
      t.string :state
      t.string :string,
      t.string :limit
      t.string :30
      t.string :zip
      t.string :string,
      t.string :limit
      t.string :12
      t.string :subdivision
      t.string :string,
      t.50, :limit
      t.string :type
      t.string :string
      t.string :30,
      t.string :is_open
      t.string :boolean

      t.timestamps
    end
  end
end
