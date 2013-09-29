class MediaController < ApplicationController
  def new
    @medium = Medium.new
  end
  
    
  def create
    @medium = Medium.new(params[:medium])
    @medium.save
    redirect_to '/media/new'
  end

end
