class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.boolean :customer_charged
      t.float :charged_money
      t.float :temple_money
      t.float :processing_fee
      t.float :service_charge
      t.boolean :cancelled
      t.boolean :returned

      t.timestamps
    end
  end
end
