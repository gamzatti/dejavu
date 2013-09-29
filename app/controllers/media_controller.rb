class MediaController < ApplicationController
  def new
    @medium = Medium.new
  end
end
