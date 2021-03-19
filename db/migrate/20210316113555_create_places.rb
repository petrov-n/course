class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.integer :place_id
      t.integer :floor
      t.integer :building

      t.timestamps
    end
  end
end
