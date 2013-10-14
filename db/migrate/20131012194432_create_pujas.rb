class CreatePujas < ActiveRecord::Migration
  def change
    create_table :pujas do |t|
      t.integer :customer_id
      t.integer :temple_id
      t.datetime :offering_date
      t.boolean :paid
      t.integer :payment_id
      t.text :notes
      t.string :status

      t.timestamps
    end
  end
end
