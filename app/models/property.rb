class Property < ActiveRecord::Base
  attr_accessible :unit_number, :street_number, :street_name, :suburb, :postcode, :state

  validates_presence_of :street_number
  validates_presence_of :state
  
  validates_length_of :street_name, minimum: 3
  validates_length_of :suburb, minimum: 3
  validates_length_of :postcode, is: 4
end