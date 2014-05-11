class CreateGps < ActiveRecord::Migration
  def change
    create_table :gps do |t|
      t.float :long
      t.float :lat
      t.integer :bus_id

      t.timestamps
    end
  end
end
