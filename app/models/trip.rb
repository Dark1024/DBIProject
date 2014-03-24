class Trip < ActiveRecord::Base
  belongs_to :employee
  belongs_to :autobus
  belongs_to :schedule
  has_many :tickets
  has_many :shipments
end
