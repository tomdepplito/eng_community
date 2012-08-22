class Image < ActiveRecord::Base
  attr_accessible :description, :product_id
  
  belongs_to :product
  
  validates_presence_of :product_id
end
