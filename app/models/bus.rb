class Bus < ActiveRecord::Base
  has_one :gps, dependent: :destroy

  scope :bus_key, ->(bus_key){where(bus_key: bus_key)}
end
