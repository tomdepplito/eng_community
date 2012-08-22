class Product < ActiveRecord::Base
  attr_accessible :company_id, :description, :part_number, :price
  
  has_many :images
  has_many :tags
  
  belongs_to :company
end
