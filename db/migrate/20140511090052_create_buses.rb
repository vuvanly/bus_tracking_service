class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :bus_number
      t.string :bus_key
      t.string :driver_name
      t.string :conductor_name
      t.string :license_plate

      t.timestamps
    end
  end
end
