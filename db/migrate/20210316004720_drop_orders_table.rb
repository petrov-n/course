class DropOrdersTable < ActiveRecord::Migration[5.2]
  def change
  	change_column :orders, :date_from, :date
  	change_column :orders, :date_to, :date
  end
end
