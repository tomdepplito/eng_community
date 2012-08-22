class Address < ActiveRecord::Base
  attr_accessible :city, :company_id, :state, :street_address, :zip
  
  belongs_to :company
  
  validates_presence_of :city
  validates_presence_of :company_id
  validates_presence_of :state
  validates_presence_of :street_address
  validates_presence_of :zip
  
end
