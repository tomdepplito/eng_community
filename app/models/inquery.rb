class Inquery < ActiveRecord::Base
  attr_accessible :body, :user_id
  
  belongs_to :user
  
  validates_presence_of :user_id
  validates_presence_of :body
end
