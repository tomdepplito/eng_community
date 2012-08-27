class UsersController < ApplicationController
  def show
    @user = current_user
    @admin_companies = Company.all.find(:admin_id => @user.id)
    @employee_companies = Company.all.find(:employee_id => @user.id)
  end
end
