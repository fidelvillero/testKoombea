class Url < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :link
  
end
