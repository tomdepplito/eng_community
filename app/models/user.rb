class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :company_id
  
  belongs_to :company
  
  has_many :responses
  has_many :inqueries
end
