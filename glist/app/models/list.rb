class List < ActiveRecord::Base
  attr_accessible :title
  has_many :items, -> {order("position ASC")}
end
