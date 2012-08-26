class TagsController < ApplicationController
  def new
    @tag = Tag.new
    respond_to do |format|
      format.js
    end
  end
  
  def create
    @tag = Tag.new
    if @tag.save
      respond_to do |format|
        format.js
      end
    else
      flash[:error] = "Something went wrong"
    end
  end
end
