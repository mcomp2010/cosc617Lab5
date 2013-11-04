class Item < ActiveRecord::Base
  attr_accessible :title
  belongs_to :list
  acts_as_list
end
