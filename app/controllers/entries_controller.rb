require 'open-uri'

class EntriesController < ApplicationController
  
  def index
    @mediums = Medium.all
  end

  def surprise
    @surprise_entries = Entry.order('random()').limit(3).where("list_id = '1' AND medium_id IN \('1', '7', '8', '9', '11', '12'\) AND url != ''") #We should use a variable to find the list and medium rather than use the ID
    @recent_entries = Entry.order('created_at DESC').limit(5).where("created_at > ?", 1.week.ago)
  end
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:entry])
    if @entry.name.empty?
#      binding.pry
      open(@entry.url).read =~ /<title>(.*?)<\/title>/
      @entry.name = $1
    end
 
  @entry.save
    return_to_part_of_page
  end
  
  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes(params[:entry])
    return_to_part_of_page 
  end
  
  def destroy
    @entry = Entry.find(params[:id])
    return_to_last_entry_place = "/lists/#{@entry.list.id}##{@entry.medium.id}"
    @entry.destroy
    flash[:success] = "Entry destroyed."
    redirect_to return_to_last_entry_place
  end

  private

  def return_to_part_of_page
     redirect_to "/lists/#{@entry.list.id}##{@entry.medium.id}"
  end
  
end

