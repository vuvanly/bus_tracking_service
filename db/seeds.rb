# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Bus.transaction do
  (1..10).each do |i|
    bus = Bus.create(bus_number: i.to_s, bus_key: "bus#{i}", driver_name: "Nguyen Van #{i}", conductor_name: "Tran Van #{i}", license_plate: "53H7 123#{i}")
    Gps.create(bus_id: bus.id, long: 0, lat: 0)
  end

end