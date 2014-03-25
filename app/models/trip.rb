class Trip < ActiveRecord::Base
  belongs_to :driver
  belongs_to :assistent
  belongs_to :autobus
  belongs_to :schedule
  has_many :tickets
  has_many :shipments
end
