class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :user
      t.integer :place
      t.integer :cost
      t.date :date_from
      t.date :date_to
      t.boolean :status

      t.timestamps
    end
  end
end
