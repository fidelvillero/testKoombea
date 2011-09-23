class Post < ActiveRecord::Base
  validates_presence_of :title, :message => 'pleace is require'
  validates_presence_of :content, :message => 'pleace is required'
  
  extend FriendlyId
  friendly_id :title, :use => :slugged
  
  #has_many :urls, :autosave => true
  #validar q un record hijo se asocia a un record padre
  has_many :urls #, :inverse_of => :posts
  accepts_nested_attributes_for :urls
  #attr_accessible :name, :posts_attributes
  
  
end