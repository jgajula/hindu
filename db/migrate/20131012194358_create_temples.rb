class CreateTemples < ActiveRecord::Migration
  def change
    create_table :temples do |t|
      t.string :name
      t.integer :zipcode
      t.string :street
      t.string :street_two
      t.string :city
      t.string :state
      t.string :country
      t.integer :main_god
      t.string :status

      t.timestamps
    end
  end
end
