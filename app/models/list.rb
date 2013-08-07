class List < ActiveRecord::Base
  attr_accessible :name, :list_id
  has_many :entries
end
