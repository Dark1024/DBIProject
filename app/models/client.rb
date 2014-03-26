class Client < ActiveRecord::Base
  has_many :tickets
  has_many :shipments
end
