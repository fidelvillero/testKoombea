class Url < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :link
  validates_format_of :link, :with => /(http):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
end
