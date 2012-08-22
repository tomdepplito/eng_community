class Company < ActiveRecord::Base
  attr_accessible :website, :name
  
  validates_presence_of :name, :website, :admin_id
  
  validates_uniqueness_of :name
  validates_uniqueness_of :website
  
  has_many :addresses
  has_many :users
  has_many :products
end
