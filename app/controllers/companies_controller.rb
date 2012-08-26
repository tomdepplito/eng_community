class CompaniesController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(params[:company])
    @company.admin_id = current_user
    if @company.save
      flash[:success] = "You have created a new company"
      redirect_to company_path(@company)
    else
      flash[:error] = "Your company was not created"
      render :new
    end
  end
  
  def index
    @companies = Company.all
  end
  
  def show
    @company = Company.find(params[:id])
  end
  
  def edit
    @company = Company.find(params[:id])
  end
  
  def update
    @company = Company.find(params[:id])
    if @company.update_attributes
      flash[:success] = "Successfully edited company info"
      redirect_to company_path(@company)
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
end
