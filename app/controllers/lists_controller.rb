class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])  
    @mediums = Medium.all
    @current_tab = :lists
  end
  
  def new
    @list = List.new
  end
  
  def create
    @list = List.new(params[:list])
    @list.save
    redirect_to '/lists/new'
  end
  
  
  
end
