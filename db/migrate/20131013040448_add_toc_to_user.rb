class AddTocToUser < ActiveRecord::Migration
  def change
    add_column :users, :toc, :boolean
  end
end
