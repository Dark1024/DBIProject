class Shipment < ActiveRecord::Base
  belongs_to :cost
  belongs_to :trip
end
