class Response < ActiveRecord::Base
  attr_accessible :body, :inquiry_id
  
  belongs_to :user
  
  validates_presence_of :inquiry_id
  validates_presence_of :user_id
  validates_presence_of :body
end
