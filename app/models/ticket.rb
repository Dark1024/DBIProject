class Ticket < ActiveRecord::Base
  belongs_to :client
  belongs_to :employee
  belongs_to :fare
  belongs_to :trip
end
