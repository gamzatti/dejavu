class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])  
    @mediums = Medium.all
  end
end
