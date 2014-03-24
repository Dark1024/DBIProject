class Fare < ActiveRecord::Base
  belongs_to :category
  has_many :tickets
end
