class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])  
    @mediums = Medium.all
    @current_tab = :lists
  end
  
  def new
    @list = List.new
  end
end
