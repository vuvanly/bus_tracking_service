class Gps < ActiveRecord::Base
  belongs_to :bus

  scope :bus_id, ->(bus_id){where(bus_id: bus_id)}
end
