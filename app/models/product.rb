class Product < ActiveRecord::Base
  attr_accessible :company_id, :description, :part_number, :price
  
  has_many :images
  has_many :tags
  
  belongs_to :company
  
  validates_presence_of :price
  validates_presence_of :company_id
  validates_presence_of :description
  validates_presence_of :part_number
end
