class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(params[:company])
    if @company.save
      flash[:success] = "You have created a new company"
      redirect_to company_path(@company)
    else
      flash[:error] = "Your company was not created"
      render :new
    end
  end
  
  def show
    @company = Company.find(params[:id])
  end
end
