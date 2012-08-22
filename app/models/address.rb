class Address < ActiveRecord::Base
  attr_accessible :city, :company_id, :state, :street_address, :zip
  
  belongs_to :compay
end
