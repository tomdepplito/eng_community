class Tag < ActiveRecord::Base
  attr_accessible :description, :product_id
  
  belongs_to :product
end
