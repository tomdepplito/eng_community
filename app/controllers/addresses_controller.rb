class AddressesController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @address = Address.new
  end
  
  def create
    @address = Address.new(params[:address])
    if @address.save
      respond_to do |format|
        format.js
      end
    else
      flash[:error] = "Something went wrong"
      render 'companies#new'
    end
  end
end
