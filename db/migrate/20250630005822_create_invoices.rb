class CreateInvoices < ActiveRecord::Migration[8.0]
  def change
    create_table :invoices do |t|
      t.string :customer_name
      t.decimal :total

      t.timestamps
    end
  end
end
