class Url < ActiveRecord::Base
  #valido la presencia de un padre
  belongs_to :posts#, :inverse_of => :urls
  validates_format_of :link#, :with => /(http):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
end
