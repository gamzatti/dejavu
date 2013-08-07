class Entry < ActiveRecord::Base
  attr_accessible :medium_id, :name, :url, :list_id
  validates_presence_of  :medium_id, :list_id
  validates_presence_of :name, :unless => :url?
  validates_presence_of :url, :unless => :name?

  belongs_to :list
  belongs_to :medium
end
