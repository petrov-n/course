class EditName < ActiveRecord::Migration[5.2]
  def change
  	change_column :orders, :user, :string
  end
end
