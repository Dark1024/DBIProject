class Employee < ActiveRecord::Base
  belongs_to :station
  belongs_to :department
  has_many :trips
  has_many :tickets
end
